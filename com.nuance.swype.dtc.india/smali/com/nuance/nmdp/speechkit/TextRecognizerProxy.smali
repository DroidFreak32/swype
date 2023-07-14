.class final Lcom/nuance/nmdp/speechkit/TextRecognizerProxy;
.super Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;
.source "TextRecognizerProxy.java"

# interfaces
.implements Lcom/nuance/nmdp/speechkit/TextRecognizer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nuance/nmdp/speechkit/RecognizerProxyBase",
        "<",
        "Lcom/nuance/nmdp/speechkit/GenericRecognition;",
        ">;",
        "Lcom/nuance/nmdp/speechkit/TextRecognizer;"
    }
.end annotation


# instance fields
.field private _listener:Lcom/nuance/nmdp/speechkit/TextRecognizer$Listener;

.field _optionalParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParam;",
            ">;"
        }
    .end annotation
.end field

.field private final _requestDict:Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;


# direct methods
.method public constructor <init>(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;Ljava/util/List;Lcom/nuance/nmdp/speechkit/TextRecognizer$Listener;Ljava/lang/Object;)V
    .locals 8
    .param p1, "kit"    # Lcom/nuance/nmdp/speechkit/SpeechKitInternal;
    .param p2, "language"    # Ljava/lang/String;
    .param p3, "appSessionId"    # Ljava/lang/String;
    .param p4, "requestParams"    # Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;
    .param p6, "listener"    # Lcom/nuance/nmdp/speechkit/TextRecognizer$Listener;
    .param p7, "callbackHandler"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/nmdp/speechkit/SpeechKitInternal;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParam;",
            ">;",
            "Lcom/nuance/nmdp/speechkit/TextRecognizer$Listener;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 26
    .local p5, "grammarParams":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParam;>;"
    const-string/jumbo v2, "websearch"

    const/4 v3, -0x1

    sget-object v4, Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;->NO_PARTIAL_RESULTS:Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;-><init>(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;Ljava/lang/String;ILcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/TextRecognizerProxy;->_listenerSync:Ljava/lang/Object;

    monitor-enter v1

    .line 29
    :try_start_0
    iput-object p6, p0, Lcom/nuance/nmdp/speechkit/TextRecognizerProxy;->_listener:Lcom/nuance/nmdp/speechkit/TextRecognizer$Listener;

    .line 30
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    iput-object p4, p0, Lcom/nuance/nmdp/speechkit/TextRecognizerProxy;->_requestDict:Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;

    .line 32
    iput-object p5, p0, Lcom/nuance/nmdp/speechkit/TextRecognizerProxy;->_optionalParams:Ljava/util/List;

    .line 33
    invoke-virtual {p0}, Lcom/nuance/nmdp/speechkit/TextRecognizerProxy;->init()V

    .line 34
    return-void

    .line 30
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic access$000(Lcom/nuance/nmdp/speechkit/TextRecognizerProxy;)Lcom/nuance/nmdp/speechkit/TextRecognizer$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/TextRecognizerProxy;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/TextRecognizerProxy;->_listener:Lcom/nuance/nmdp/speechkit/TextRecognizer$Listener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/nmdp/speechkit/TextRecognizerProxy;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/TextRecognizerProxy;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/nuance/nmdp/speechkit/TextRecognizerProxy;->callback(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$200(Lcom/nuance/nmdp/speechkit/TextRecognizerProxy;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/TextRecognizerProxy;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/nuance/nmdp/speechkit/TextRecognizerProxy;->callback(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected final createRecognizer(Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;Ljava/lang/String;ILcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;)Lcom/nuance/nmdp/speechkit/RecognizerBase;
    .locals 8
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
    .line 56
    new-instance v0, Lcom/nuance/nmdp/speechkit/TextRecognizerProxy$1;

    iget-object v5, p0, Lcom/nuance/nmdp/speechkit/TextRecognizerProxy;->_requestDict:Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;

    iget-object v6, p0, Lcom/nuance/nmdp/speechkit/TextRecognizerProxy;->_optionalParams:Ljava/util/List;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p5

    move-object v4, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/nuance/nmdp/speechkit/TextRecognizerProxy$1;-><init>(Lcom/nuance/nmdp/speechkit/TextRecognizerProxy;Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;Ljava/util/List;Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;)V

    return-object v0
.end method

.method public final setListener(Lcom/nuance/nmdp/speechkit/TextRecognizer$Listener;)V
    .locals 2
    .param p1, "listener"    # Lcom/nuance/nmdp/speechkit/TextRecognizer$Listener;

    .prologue
    .line 38
    const-string/jumbo v0, "listener"

    invoke-static {p1, v0}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->checkArgForNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/TextRecognizerProxy;->_listenerSync:Ljava/lang/Object;

    monitor-enter v1

    .line 42
    :try_start_0
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/TextRecognizerProxy;->_listener:Lcom/nuance/nmdp/speechkit/TextRecognizer$Listener;

    .line 43
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
