.class final Lcom/nuance/nmdp/speechkit/NluRecognizerProxy;
.super Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;
.source "NluRecognizerProxy.java"

# interfaces
.implements Lcom/nuance/nmdp/speechkit/NluRecognizer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nuance/nmdp/speechkit/RecognizerProxyBase",
        "<",
        "Lcom/nuance/nmdp/speechkit/GenericRecognition;",
        ">;",
        "Lcom/nuance/nmdp/speechkit/NluRecognizer;"
    }
.end annotation


# instance fields
.field private _listener:Lcom/nuance/nmdp/speechkit/NluRecognizer$Listener;

.field private final _requestDict:Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;


# direct methods
.method public constructor <init>(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;Lcom/nuance/nmdp/speechkit/NluRecognizer$Listener;Ljava/lang/Object;)V
    .locals 8
    .param p1, "kit"    # Lcom/nuance/nmdp/speechkit/SpeechKitInternal;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "detection"    # I
    .param p4, "language"    # Ljava/lang/String;
    .param p5, "appSessionId"    # Ljava/lang/String;
    .param p6, "requestParams"    # Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;
    .param p7, "listener"    # Lcom/nuance/nmdp/speechkit/NluRecognizer$Listener;
    .param p8, "callbackHandler"    # Ljava/lang/Object;

    .prologue
    .line 22
    sget-object v4, Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;->NO_PARTIAL_RESULTS:Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;-><init>(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;Ljava/lang/String;ILcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/NluRecognizerProxy;->_listenerSync:Ljava/lang/Object;

    monitor-enter v1

    .line 25
    :try_start_0
    iput-object p7, p0, Lcom/nuance/nmdp/speechkit/NluRecognizerProxy;->_listener:Lcom/nuance/nmdp/speechkit/NluRecognizer$Listener;

    .line 26
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    iput-object p6, p0, Lcom/nuance/nmdp/speechkit/NluRecognizerProxy;->_requestDict:Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;

    .line 28
    invoke-virtual {p0}, Lcom/nuance/nmdp/speechkit/NluRecognizerProxy;->init()V

    .line 29
    return-void

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic access$000(Lcom/nuance/nmdp/speechkit/NluRecognizerProxy;)Lcom/nuance/nmdp/speechkit/NluRecognizer$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/NluRecognizerProxy;

    .prologue
    .line 9
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/NluRecognizerProxy;->_listener:Lcom/nuance/nmdp/speechkit/NluRecognizer$Listener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/nmdp/speechkit/NluRecognizerProxy;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/NluRecognizerProxy;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Lcom/nuance/nmdp/speechkit/NluRecognizerProxy;->callback(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$200(Lcom/nuance/nmdp/speechkit/NluRecognizerProxy;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/NluRecognizerProxy;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Lcom/nuance/nmdp/speechkit/NluRecognizerProxy;->callback(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$300(Lcom/nuance/nmdp/speechkit/NluRecognizerProxy;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/NluRecognizerProxy;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Lcom/nuance/nmdp/speechkit/NluRecognizerProxy;->callback(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$400(Lcom/nuance/nmdp/speechkit/NluRecognizerProxy;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/NluRecognizerProxy;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Lcom/nuance/nmdp/speechkit/NluRecognizerProxy;->callback(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected final createRecognizer(Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;Ljava/lang/String;ILcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;)Lcom/nuance/nmdp/speechkit/RecognizerBase;
    .locals 9
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
            "Lcom/nuance/nmdp/speechkit/GenericRecognition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    new-instance v0, Lcom/nuance/nmdp/speechkit/NluRecognizerProxy$1;

    iget-object v7, p0, Lcom/nuance/nmdp/speechkit/NluRecognizerProxy;->_requestDict:Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/nuance/nmdp/speechkit/NluRecognizerProxy$1;-><init>(Lcom/nuance/nmdp/speechkit/NluRecognizerProxy;Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;)V

    return-object v0
.end method

.method public final setListener(Lcom/nuance/nmdp/speechkit/NluRecognizer$Listener;)V
    .locals 2
    .param p1, "listener"    # Lcom/nuance/nmdp/speechkit/NluRecognizer$Listener;

    .prologue
    .line 33
    const-string v0, "listener"

    invoke-static {p1, v0}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->checkArgForNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/NluRecognizerProxy;->_listenerSync:Ljava/lang/Object;

    monitor-enter v1

    .line 37
    :try_start_0
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/NluRecognizerProxy;->_listener:Lcom/nuance/nmdp/speechkit/NluRecognizer$Listener;

    .line 38
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
