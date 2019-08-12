.class public final Lcom/nuance/nmdp/speechkit/SpeechKit;
.super Lcom/nuance/nmdp/speechkit/SpeechKitBase;
.source "SpeechKit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;,
        Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;
    }
.end annotation


# instance fields
.field private final _appContext:Landroid/content/Context;

.field private final _kit:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;


# direct methods
.method private constructor <init>(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;Landroid/content/Context;)V
    .locals 0
    .param p1, "speechKit"    # Lcom/nuance/nmdp/speechkit/SpeechKitInternal;
    .param p2, "appContext"    # Landroid/content/Context;

    .prologue
    .line 257
    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/SpeechKitBase;-><init>()V

    .line 258
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/SpeechKit;->_kit:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    .line 259
    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/SpeechKit;->_appContext:Landroid/content/Context;

    .line 260
    return-void
.end method

.method private defineAudioPrompt(Landroid/content/res/AssetFileDescriptor;)Lcom/nuance/nmdp/speechkit/Prompt;
    .locals 4
    .param p1, "file"    # Landroid/content/res/AssetFileDescriptor;

    .prologue
    .line 869
    if-nez p1, :cond_0

    .line 871
    const/4 v1, 0x0

    .line 898
    :goto_0
    return-object v1

    .line 874
    :cond_0
    new-instance v0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;

    invoke-direct {v0}, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;-><init>()V

    .line 876
    .local v0, "audio":Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;
    new-instance v1, Lcom/nuance/nmdp/speechkit/Prompt;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/SpeechKit;->_kit:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    invoke-direct {v1, v0, v2}, Lcom/nuance/nmdp/speechkit/Prompt;-><init>(Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/SpeechKitInternal;)V

    .line 877
    .local v1, "ret":Lcom/nuance/nmdp/speechkit/Prompt;
    invoke-static {}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->getSync()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 879
    :try_start_0
    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/SpeechKit;->_kit:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    invoke-virtual {v2}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->isValid()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 882
    :try_start_1
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 885
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->throwInvalidException()V

    .line 887
    :cond_1
    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/SpeechKit;->_kit:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    invoke-virtual {v2, v1}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->definePrompt(Lcom/nuance/nmdp/speechkit/Prompt;)V

    .line 888
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 890
    new-instance v2, Lcom/nuance/nmdp/speechkit/SpeechKit$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/nuance/nmdp/speechkit/SpeechKit$1;-><init>(Lcom/nuance/nmdp/speechkit/SpeechKit;Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;Landroid/content/res/AssetFileDescriptor;)V

    invoke-static {v2}, Lcom/nuance/nmdp/speechkit/util/JobRunner;->addJob(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 888
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ[B)Lcom/nuance/nmdp/speechkit/SpeechKit;
    .locals 9
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "ssl"    # Z
    .param p5, "applicationKey"    # [B

    .prologue
    .line 147
    const-string v1, ""

    const/4 v5, 0x0

    sget-object v8, Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;->NVC:Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v6, p4

    move-object v7, p5

    invoke-static/range {v0 .. v8}, Lcom/nuance/nmdp/speechkit/SpeechKit;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z[BLcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;)Lcom/nuance/nmdp/speechkit/SpeechKit;

    move-result-object v0

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z[BLcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;)Lcom/nuance/nmdp/speechkit/SpeechKit;
    .locals 4
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "appVersion"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "subscriptionId"    # Ljava/lang/String;
    .param p6, "ssl"    # Z
    .param p7, "applicationKey"    # [B
    .param p8, "type"    # Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;

    .prologue
    .line 232
    invoke-static/range {p0 .. p8}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->initialize(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z[BLcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;)Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    move-result-object v1

    .line 233
    .local v1, "kitInternal":Lcom/nuance/nmdp/speechkit/SpeechKitInternal;
    if-eqz v1, :cond_1

    .line 236
    invoke-static {}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->getSync()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 241
    :try_start_0
    invoke-virtual {v1}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->getWrapper()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/SpeechKit;

    .line 242
    .local v0, "kit":Lcom/nuance/nmdp/speechkit/SpeechKit;
    if-nez v0, :cond_0

    .line 244
    new-instance v0, Lcom/nuance/nmdp/speechkit/SpeechKit;

    .end local v0    # "kit":Lcom/nuance/nmdp/speechkit/SpeechKit;
    invoke-direct {v0, v1, p0}, Lcom/nuance/nmdp/speechkit/SpeechKit;-><init>(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;Landroid/content/Context;)V

    .line 245
    .restart local v0    # "kit":Lcom/nuance/nmdp/speechkit/SpeechKit;
    invoke-virtual {v1, v0}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->setWrapper(Ljava/lang/Object;)V

    .line 247
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    .end local v0    # "kit":Lcom/nuance/nmdp/speechkit/SpeechKit;
    :goto_0
    return-object v0

    .line 247
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 250
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[BLcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;)Lcom/nuance/nmdp/speechkit/SpeechKit;
    .locals 9
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "appVersion"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "ssl"    # Z
    .param p6, "applicationKey"    # [B
    .param p7, "type"    # Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;

    .prologue
    .line 189
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lcom/nuance/nmdp/speechkit/SpeechKit;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z[BLcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;)Lcom/nuance/nmdp/speechkit/SpeechKit;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final cancelCurrent()V
    .locals 1

    .prologue
    .line 935
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKit;->_kit:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->cancelCurrent()V

    .line 936
    return-void
.end method

.method public final connect()V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKit;->_kit:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->connect()V

    .line 288
    return-void
.end method

.method public final createConstraintRecognizer(Ljava/lang/String;ILcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;Ljava/lang/String;Ljava/util/Vector;Lcom/nuance/nmdp/speechkit/Recognizer$Listener;Ljava/lang/Object;)Lcom/nuance/nmdp/speechkit/Recognizer;
    .locals 8
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "detection"    # I
    .param p3, "partialResultsMode"    # Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;
    .param p4, "language"    # Ljava/lang/String;
    .param p6, "listener"    # Lcom/nuance/nmdp/speechkit/Recognizer$Listener;
    .param p7, "callbackHandler"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Lcom/nuance/nmdp/speechkit/util/grammar/Grammar;",
            ">;",
            "Lcom/nuance/nmdp/speechkit/Recognizer$Listener;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/nuance/nmdp/speechkit/Recognizer;"
        }
    .end annotation

    .prologue
    .line 517
    .local p5, "grammarList":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/nuance/nmdp/speechkit/util/grammar/Grammar;>;"
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKit;->_kit:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->createConstraintRecognizer(Ljava/lang/String;ILcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;Ljava/lang/String;Ljava/util/Vector;Lcom/nuance/nmdp/speechkit/Recognizer$Listener;Ljava/lang/Object;)Lcom/nuance/nmdp/speechkit/Recognizer;

    move-result-object v0

    return-object v0
.end method

.method public final createConstraintRecognizer(Ljava/lang/String;ILjava/lang/String;Ljava/util/Vector;Lcom/nuance/nmdp/speechkit/Recognizer$Listener;Ljava/lang/Object;)Lcom/nuance/nmdp/speechkit/Recognizer;
    .locals 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "detection"    # I
    .param p3, "language"    # Ljava/lang/String;
    .param p5, "listener"    # Lcom/nuance/nmdp/speechkit/Recognizer$Listener;
    .param p6, "callbackHandler"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Lcom/nuance/nmdp/speechkit/util/grammar/Grammar;",
            ">;",
            "Lcom/nuance/nmdp/speechkit/Recognizer$Listener;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/nuance/nmdp/speechkit/Recognizer;"
        }
    .end annotation

    .prologue
    .line 452
    .local p4, "grammarList":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/nuance/nmdp/speechkit/util/grammar/Grammar;>;"
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKit;->_kit:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->createConstraintRecognizer(Ljava/lang/String;ILjava/lang/String;Ljava/util/Vector;Lcom/nuance/nmdp/speechkit/Recognizer$Listener;Ljava/lang/Object;)Lcom/nuance/nmdp/speechkit/Recognizer;

    move-result-object v0

    return-object v0
.end method

.method public final createCustomWordsSynchronizer(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer$Listener;Landroid/os/Handler;)Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer;
    .locals 1
    .param p1, "dictationType"    # Ljava/lang/String;
    .param p2, "language"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer$Listener;
    .param p4, "callbackHandler"    # Landroid/os/Handler;

    .prologue
    .line 973
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKit;->_kit:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->createCustomWordsSynchronizer(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer$Listener;Landroid/os/Handler;)Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer;

    move-result-object v0

    return-object v0
.end method

.method public final createDataUploadCmd(Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;IILcom/nuance/nmdp/speechkit/DataUploadCommand$Listener;Landroid/os/Handler;)Lcom/nuance/nmdp/speechkit/DataUploadCommand;
    .locals 6
    .param p1, "datablock"    # Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;
    .param p2, "currentChecksum"    # I
    .param p3, "newChecksum"    # I
    .param p4, "listener"    # Lcom/nuance/nmdp/speechkit/DataUploadCommand$Listener;
    .param p5, "callbackHandler"    # Landroid/os/Handler;

    .prologue
    .line 724
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKit;->_kit:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->createDataUploadCmd(Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;IILcom/nuance/nmdp/speechkit/DataUploadCommand$Listener;Ljava/lang/Object;)Lcom/nuance/nmdp/speechkit/DataUploadCommand;

    move-result-object v0

    return-object v0
.end method

.method public final createLogRevisionCmd(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/GenericCommand$Listener;Landroid/os/Handler;)Lcom/nuance/nmdp/speechkit/GenericCommand;
    .locals 6
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "content"    # Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;
    .param p3, "appSessionId"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/nuance/nmdp/speechkit/GenericCommand$Listener;
    .param p5, "callbackHandler"    # Landroid/os/Handler;

    .prologue
    .line 687
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKit;->_kit:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->createLogRevisionCmd(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/GenericCommand$Listener;Ljava/lang/Object;)Lcom/nuance/nmdp/speechkit/GenericCommand;

    move-result-object v0

    return-object v0
.end method

.method public final createNluRecognizer(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;Lcom/nuance/nmdp/speechkit/NluRecognizer$Listener;Landroid/os/Handler;)Lcom/nuance/nmdp/speechkit/NluRecognizer;
    .locals 8
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "detection"    # I
    .param p3, "language"    # Ljava/lang/String;
    .param p4, "appSessionId"    # Ljava/lang/String;
    .param p5, "requestParams"    # Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;
    .param p6, "listener"    # Lcom/nuance/nmdp/speechkit/NluRecognizer$Listener;
    .param p7, "callbackHandler"    # Landroid/os/Handler;

    .prologue
    .line 574
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKit;->_kit:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->createNluRecognizer(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;Lcom/nuance/nmdp/speechkit/NluRecognizer$Listener;Ljava/lang/Object;)Lcom/nuance/nmdp/speechkit/NluRecognizer;

    move-result-object v0

    return-object v0
.end method

.method public final createRecognizer(Ljava/lang/String;ILcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/Recognizer$Listener;Landroid/os/Handler;)Lcom/nuance/nmdp/speechkit/Recognizer;
    .locals 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "detection"    # I
    .param p3, "partialResultsMode"    # Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;
    .param p4, "language"    # Ljava/lang/String;
    .param p5, "listener"    # Lcom/nuance/nmdp/speechkit/Recognizer$Listener;
    .param p6, "callbackHandler"    # Landroid/os/Handler;

    .prologue
    .line 395
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKit;->_kit:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->createRecognizer(Ljava/lang/String;ILcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/Recognizer$Listener;Ljava/lang/Object;)Lcom/nuance/nmdp/speechkit/Recognizer;

    move-result-object v0

    return-object v0
.end method

.method public final createRecognizer(Ljava/lang/String;ILjava/lang/String;Lcom/nuance/nmdp/speechkit/Recognizer$Listener;Landroid/os/Handler;)Lcom/nuance/nmdp/speechkit/Recognizer;
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "detection"    # I
    .param p3, "language"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/nuance/nmdp/speechkit/Recognizer$Listener;
    .param p5, "callbackHandler"    # Landroid/os/Handler;

    .prologue
    .line 337
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKit;->_kit:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->createRecognizer(Ljava/lang/String;ILjava/lang/String;Lcom/nuance/nmdp/speechkit/Recognizer$Listener;Ljava/lang/Object;)Lcom/nuance/nmdp/speechkit/Recognizer;

    move-result-object v0

    return-object v0
.end method

.method public final createResetUserProfileCmd(Lcom/nuance/nmdp/speechkit/GenericCommand$Listener;Landroid/os/Handler;)Lcom/nuance/nmdp/speechkit/GenericCommand;
    .locals 1
    .param p1, "listener"    # Lcom/nuance/nmdp/speechkit/GenericCommand$Listener;
    .param p2, "callbackHandler"    # Landroid/os/Handler;

    .prologue
    .line 641
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKit;->_kit:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->createResetUserProfileCmd(Lcom/nuance/nmdp/speechkit/GenericCommand$Listener;Ljava/lang/Object;)Lcom/nuance/nmdp/speechkit/GenericCommand;

    move-result-object v0

    return-object v0
.end method

.method public final createTextContextRecognizer(Ljava/lang/String;ILcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/TextContext;Lcom/nuance/nmdp/speechkit/Recognizer$Listener;Landroid/os/Handler;)Lcom/nuance/nmdp/speechkit/Recognizer;
    .locals 8
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "detection"    # I
    .param p3, "partialResultsMode"    # Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;
    .param p4, "language"    # Ljava/lang/String;
    .param p5, "textContext"    # Lcom/nuance/nmdp/speechkit/TextContext;
    .param p6, "listener"    # Lcom/nuance/nmdp/speechkit/Recognizer$Listener;
    .param p7, "callbackHandler"    # Landroid/os/Handler;

    .prologue
    .line 965
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKit;->_kit:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->createTextContextRecognizer(Ljava/lang/String;ILcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/TextContext;Lcom/nuance/nmdp/speechkit/Recognizer$Listener;Ljava/lang/Object;)Lcom/nuance/nmdp/speechkit/Recognizer;

    move-result-object v0

    return-object v0
.end method

.method public final createTextRecognizer(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;Lcom/nuance/nmdp/speechkit/TextRecognizer$Listener;Landroid/os/Handler;)Lcom/nuance/nmdp/speechkit/TextRecognizer;
    .locals 6
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "appSessionId"    # Ljava/lang/String;
    .param p3, "requestParams"    # Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;
    .param p4, "listener"    # Lcom/nuance/nmdp/speechkit/TextRecognizer$Listener;
    .param p5, "callbackHandler"    # Landroid/os/Handler;

    .prologue
    .line 614
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKit;->_kit:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->createTextRecognizer(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;Lcom/nuance/nmdp/speechkit/TextRecognizer$Listener;Ljava/lang/Object;)Lcom/nuance/nmdp/speechkit/TextRecognizer;

    move-result-object v0

    return-object v0
.end method

.method public final createVocalizerWithLanguage(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;Landroid/os/Handler;)Lcom/nuance/nmdp/speechkit/Vocalizer;
    .locals 1
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;
    .param p3, "callbackHandler"    # Landroid/os/Handler;

    .prologue
    .line 783
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKit;->_kit:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->createVocalizerWithLanguage(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;Ljava/lang/Object;)Lcom/nuance/nmdp/speechkit/Vocalizer;

    move-result-object v0

    return-object v0
.end method

.method public final createVocalizerWithVoice(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;Landroid/os/Handler;)Lcom/nuance/nmdp/speechkit/Vocalizer;
    .locals 1
    .param p1, "voice"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;
    .param p3, "callbackHandler"    # Landroid/os/Handler;

    .prologue
    .line 815
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKit;->_kit:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->createVocalizerWithVoice(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;Ljava/lang/Object;)Lcom/nuance/nmdp/speechkit/Vocalizer;

    move-result-object v0

    return-object v0
.end method

.method public final defineAudioPrompt(I)Lcom/nuance/nmdp/speechkit/Prompt;
    .locals 3
    .param p1, "resourceId"    # I

    .prologue
    .line 856
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/SpeechKit;->_appContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 857
    .local v0, "afd":Landroid/content/res/AssetFileDescriptor;
    if-nez v0, :cond_0

    .line 859
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "resourceId must refer to an uncompressed resource"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 861
    :cond_0
    invoke-direct {p0, v0}, Lcom/nuance/nmdp/speechkit/SpeechKit;->defineAudioPrompt(Landroid/content/res/AssetFileDescriptor;)Lcom/nuance/nmdp/speechkit/Prompt;

    move-result-object v1

    return-object v1
.end method

.method public final getCmdSetType()Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;
    .locals 1

    .prologue
    .line 954
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKit;->_kit:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->getCmdSetType()Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;

    move-result-object v0

    return-object v0
.end method

.method public final getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKit;->_kit:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->getSessionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final release()V
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKit;->_kit:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->release()V

    .line 273
    return-void
.end method

.method public final setCmdSetType(Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;)V
    .locals 1
    .param p1, "type"    # Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;

    .prologue
    .line 946
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKit;->_kit:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    invoke-virtual {v0, p1}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->setCmdSetType(Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;)V

    .line 947
    return-void
.end method

.method public final setDefaultRecognizerPrompts(Lcom/nuance/nmdp/speechkit/Prompt;Lcom/nuance/nmdp/speechkit/Prompt;Lcom/nuance/nmdp/speechkit/Prompt;Lcom/nuance/nmdp/speechkit/Prompt;)V
    .locals 1
    .param p1, "recordingStart"    # Lcom/nuance/nmdp/speechkit/Prompt;
    .param p2, "recordingStop"    # Lcom/nuance/nmdp/speechkit/Prompt;
    .param p3, "result"    # Lcom/nuance/nmdp/speechkit/Prompt;
    .param p4, "error"    # Lcom/nuance/nmdp/speechkit/Prompt;

    .prologue
    .line 923
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKit;->_kit:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->setDefaultRecognizerPrompts(Lcom/nuance/nmdp/speechkit/Prompt;Lcom/nuance/nmdp/speechkit/Prompt;Lcom/nuance/nmdp/speechkit/Prompt;Lcom/nuance/nmdp/speechkit/Prompt;)V

    .line 924
    return-void
.end method
