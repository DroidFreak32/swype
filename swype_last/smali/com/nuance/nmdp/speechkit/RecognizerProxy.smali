.class final Lcom/nuance/nmdp/speechkit/RecognizerProxy;
.super Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;
.source "RecognizerProxy.java"

# interfaces
.implements Lcom/nuance/nmdp/speechkit/Recognizer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nuance/nmdp/speechkit/RecognizerProxyBase",
        "<",
        "Lcom/nuance/nmdp/speechkit/Recognition;",
        ">;",
        "Lcom/nuance/nmdp/speechkit/Recognizer;"
    }
.end annotation


# instance fields
.field private _listener:Lcom/nuance/nmdp/speechkit/Recognizer$Listener;


# direct methods
.method public constructor <init>(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;Ljava/lang/String;ILcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/Recognizer$Listener;Ljava/lang/Object;)V
    .registers 16
    .param p1, "kit"    # Lcom/nuance/nmdp/speechkit/SpeechKitInternal;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "detection"    # I
    .param p4, "partialResultsMode"    # Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;
    .param p5, "language"    # Ljava/lang/String;
    .param p6, "listener"    # Lcom/nuance/nmdp/speechkit/Recognizer$Listener;
    .param p7, "callbackHandler"    # Ljava/lang/Object;

    .prologue
    .line 19
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;-><init>(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;Ljava/lang/String;ILcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/RecognizerProxy;->_listenerSync:Ljava/lang/Object;

    monitor-enter v1

    .line 22
    :try_start_e
    iput-object p6, p0, Lcom/nuance/nmdp/speechkit/RecognizerProxy;->_listener:Lcom/nuance/nmdp/speechkit/Recognizer$Listener;

    .line 23
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_15

    .line 24
    invoke-virtual {p0}, Lcom/nuance/nmdp/speechkit/RecognizerProxy;->init()V

    .line 25
    return-void

    .line 23
    :catchall_15
    move-exception v0

    :try_start_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v0
.end method

.method static synthetic access$000(Lcom/nuance/nmdp/speechkit/RecognizerProxy;)Lcom/nuance/nmdp/speechkit/Recognizer$Listener;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/RecognizerProxy;

    .prologue
    .line 7
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/RecognizerProxy;->_listener:Lcom/nuance/nmdp/speechkit/Recognizer$Listener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/nmdp/speechkit/RecognizerProxy;Ljava/lang/Runnable;)V
    .registers 2
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/RecognizerProxy;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 7
    invoke-virtual {p0, p1}, Lcom/nuance/nmdp/speechkit/RecognizerProxy;->callback(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$200(Lcom/nuance/nmdp/speechkit/RecognizerProxy;Ljava/lang/Runnable;)V
    .registers 2
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/RecognizerProxy;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 7
    invoke-virtual {p0, p1}, Lcom/nuance/nmdp/speechkit/RecognizerProxy;->callback(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$300(Lcom/nuance/nmdp/speechkit/RecognizerProxy;Ljava/lang/Runnable;)V
    .registers 2
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/RecognizerProxy;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 7
    invoke-virtual {p0, p1}, Lcom/nuance/nmdp/speechkit/RecognizerProxy;->callback(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$400(Lcom/nuance/nmdp/speechkit/RecognizerProxy;Ljava/lang/Runnable;)V
    .registers 2
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/RecognizerProxy;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 7
    invoke-virtual {p0, p1}, Lcom/nuance/nmdp/speechkit/RecognizerProxy;->callback(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected final createRecognizer(Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;Ljava/lang/String;ILcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;)Lcom/nuance/nmdp/speechkit/RecognizerBase;
    .registers 17
    .param p1, "runner"    # Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "detectionType"    # I
    .param p4, "partialResultsMode"    # Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;
    .param p5, "language"    # Ljava/lang/String;
    .param p6, "appSessionId"    # Ljava/lang/String;
    .param p7, "energyListener"    # Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;",
            "Ljava/lang/String;",
            "I",
            "Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;",
            ")",
            "Lcom/nuance/nmdp/speechkit/RecognizerBase",
            "<",
            "Lcom/nuance/nmdp/speechkit/Recognition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Lcom/nuance/nmdp/speechkit/RecognizerProxy$1;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v7, p5

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/nuance/nmdp/speechkit/RecognizerProxy$1;-><init>(Lcom/nuance/nmdp/speechkit/RecognizerProxy;Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;Ljava/lang/String;ILcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;ILjava/lang/String;Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;)V

    return-object v0
.end method

.method public final setListener(Lcom/nuance/nmdp/speechkit/Recognizer$Listener;)V
    .registers 4
    .param p1, "listener"    # Lcom/nuance/nmdp/speechkit/Recognizer$Listener;

    .prologue
    .line 100
    const-string/jumbo v0, "listener"

    invoke-static {p1, v0}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->checkArgForNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/RecognizerProxy;->_listenerSync:Ljava/lang/Object;

    monitor-enter v1

    .line 104
    :try_start_9
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/RecognizerProxy;->_listener:Lcom/nuance/nmdp/speechkit/Recognizer$Listener;

    .line 105
    monitor-exit v1

    return-void

    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_d

    throw v0
.end method
