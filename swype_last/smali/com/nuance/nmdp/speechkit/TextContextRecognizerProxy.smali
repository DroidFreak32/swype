.class final Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy;
.super Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;
.source "TextContextRecognizerProxy.java"

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

.field private final _textContext:Lcom/nuance/nmdp/speechkit/TextContext;


# direct methods
.method public constructor <init>(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;Ljava/lang/String;ILcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/TextContext;Lcom/nuance/nmdp/speechkit/Recognizer$Listener;Ljava/lang/Object;)V
    .registers 17
    .param p1, "kit"    # Lcom/nuance/nmdp/speechkit/SpeechKitInternal;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "detection"    # I
    .param p4, "partialResultsMode"    # Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;
    .param p5, "language"    # Ljava/lang/String;
    .param p6, "textContext"    # Lcom/nuance/nmdp/speechkit/TextContext;
    .param p7, "listener"    # Lcom/nuance/nmdp/speechkit/Recognizer$Listener;
    .param p8, "callbackHandler"    # Ljava/lang/Object;

    .prologue
    .line 20
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;-><init>(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;Ljava/lang/String;ILcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy;->_listenerSync:Ljava/lang/Object;

    monitor-enter v1

    .line 24
    :try_start_f
    iput-object p6, p0, Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy;->_textContext:Lcom/nuance/nmdp/speechkit/TextContext;

    .line 25
    iput-object p7, p0, Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy;->_listener:Lcom/nuance/nmdp/speechkit/Recognizer$Listener;

    .line 26
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_18

    .line 28
    invoke-virtual {p0}, Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy;->init()V

    .line 29
    return-void

    .line 26
    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method static synthetic access$000(Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy;)Lcom/nuance/nmdp/speechkit/Recognizer$Listener;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy;

    .prologue
    .line 7
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy;->_listener:Lcom/nuance/nmdp/speechkit/Recognizer$Listener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy;Ljava/lang/Runnable;)V
    .registers 2
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 7
    invoke-virtual {p0, p1}, Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy;->callback(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$200(Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy;Ljava/lang/Runnable;)V
    .registers 2
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 7
    invoke-virtual {p0, p1}, Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy;->callback(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$300(Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy;Ljava/lang/Runnable;)V
    .registers 2
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 7
    invoke-virtual {p0, p1}, Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy;->callback(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$400(Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy;Ljava/lang/Runnable;)V
    .registers 2
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 7
    invoke-virtual {p0, p1}, Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy;->callback(Ljava/lang/Runnable;)V

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
    .line 40
    new-instance v0, Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy$1;

    iget-object v7, p0, Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy;->_textContext:Lcom/nuance/nmdp/speechkit/TextContext;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy$1;-><init>(Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy;Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;Ljava/lang/String;ILcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/TextContext;Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;)V

    return-object v0
.end method

.method public final setListener(Lcom/nuance/nmdp/speechkit/Recognizer$Listener;)V
    .registers 4
    .param p1, "listener"    # Lcom/nuance/nmdp/speechkit/Recognizer$Listener;

    .prologue
    .line 106
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy;->_listenerSync:Ljava/lang/Object;

    monitor-enter v1

    .line 107
    :try_start_3
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy;->_listener:Lcom/nuance/nmdp/speechkit/Recognizer$Listener;

    .line 108
    monitor-exit v1

    return-void

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method
