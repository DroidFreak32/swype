.class public final Lcom/nuance/speech/dragon/SpeechKitWrapper;
.super Ljava/lang/Object;
.source "SpeechKitWrapper.java"


# static fields
.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentLanguageName:Ljava/lang/String;

.field private mCustomWordSyncWrapper:Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;

.field private final mSpeechConfig:Lcom/nuance/speech/SpeechConfig;

.field private mSpeechKitInstance:Lcom/nuance/nmdp/speechkit/SpeechKit;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const-string/jumbo v0, "SpeechKitWrapper"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "languageName"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->mSpeechKitInstance:Lcom/nuance/nmdp/speechkit/SpeechKit;

    .line 32
    iput-object p1, p0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->mContext:Landroid/content/Context;

    .line 33
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getSpeechConfig()Lcom/nuance/speech/SpeechConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->mSpeechConfig:Lcom/nuance/speech/SpeechConfig;

    .line 34
    invoke-direct {p0, p2}, Lcom/nuance/speech/dragon/SpeechKitWrapper;->createSpeechKitInstance(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method private createSpeechKitInstance(Ljava/lang/String;)V
    .registers 15
    .param p1, "languageName"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v5, 0x0

    .line 94
    iget-object v0, p0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->mSpeechKitInstance:Lcom/nuance/nmdp/speechkit/SpeechKit;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->mCurrentLanguageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 95
    invoke-direct {p0}, Lcom/nuance/speech/dragon/SpeechKitWrapper;->releaseSpeechKitInstance()V

    .line 97
    :cond_12
    iget-object v0, p0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->mSpeechKitInstance:Lcom/nuance/nmdp/speechkit/SpeechKit;

    if-nez v0, :cond_dd

    .line 98
    iput-object p1, p0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->mCurrentLanguageName:Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->mSpeechConfig:Lcom/nuance/speech/SpeechConfig;

    invoke-virtual {v0}, Lcom/nuance/speech/SpeechConfig;->getAppName()Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, "appName":Ljava/lang/String;
    iget-object v0, p0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->mSpeechConfig:Lcom/nuance/speech/SpeechConfig;

    invoke-virtual {p0}, Lcom/nuance/speech/dragon/SpeechKitWrapper;->getCurrentLanguageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/speech/SpeechConfig;->getLanguageServerName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 101
    .local v3, "server":Ljava/lang/String;
    iget-object v0, p0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->mSpeechConfig:Lcom/nuance/speech/SpeechConfig;

    invoke-virtual {p0}, Lcom/nuance/speech/dragon/SpeechKitWrapper;->getCurrentLanguageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/speech/SpeechConfig;->getPortId(Ljava/lang/String;)S

    move-result v4

    .line 102
    .local v4, "portId":S
    iget-object v0, p0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->mSpeechConfig:Lcom/nuance/speech/SpeechConfig;

    iget-object v1, p0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/nuance/speech/SpeechConfig;->getAppKey(Landroid/content/Context;)[B

    move-result-object v6

    .line 103
    .local v6, "appKey":[B
    if-nez v6, :cond_45

    .line 104
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "App keys is missing in speech config (comes from swype core lib)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_45
    sget-object v0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v12, [Ljava/lang/Object;

    const-string/jumbo v7, "appName: "

    aput-object v7, v1, v5

    aput-object v2, v1, v11

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 109
    sget-object v0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v12, [Ljava/lang/Object;

    const-string/jumbo v7, "server: "

    aput-object v7, v1, v5

    aput-object v3, v1, v11

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 110
    sget-object v0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v12, [Ljava/lang/Object;

    const-string/jumbo v7, "portId: "

    aput-object v7, v1, v5

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    aput-object v7, v1, v11

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 113
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .local v9, "hexString":Ljava/lang/StringBuilder;
    array-length v1, v6

    move v0, v5

    :goto_7a
    if-ge v0, v1, :cond_93

    aget-byte v7, v6, v0

    .line 115
    and-int/lit16 v10, v7, 0xff

    .line 116
    .local v10, "v":I
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    .line 117
    .local v8, "hex":Ljava/lang/String;
    const/16 v7, 0x10

    if-ge v10, v7, :cond_8d

    .line 118
    const/16 v7, 0x30

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 120
    :cond_8d
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_7a

    .line 122
    .end local v8    # "hex":Ljava/lang/String;
    .end local v10    # "v":I
    :cond_93
    sget-object v0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v7, "AppKey "

    aput-object v7, v1, v5

    array-length v7, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v1, v11

    const-string/jumbo v7, " bytes"

    aput-object v7, v1, v12

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 123
    sget-object v0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v12, [Ljava/lang/Object;

    const-string/jumbo v7, "AppKey: "

    aput-object v7, v1, v5

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v11

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 125
    iget-object v0, p0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->mContext:Landroid/content/Context;

    .line 127
    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getBuildInfo()Lcom/nuance/swype/input/BuildInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/BuildInfo;->getBuildVersion()Ljava/lang/String;

    move-result-object v1

    .line 133
    invoke-virtual {p0}, Lcom/nuance/speech/dragon/SpeechKitWrapper;->getSpeechCmd()Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;

    move-result-object v7

    .line 125
    invoke-static/range {v0 .. v7}, Lcom/nuance/nmdp/speechkit/SpeechKit;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[BLcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;)Lcom/nuance/nmdp/speechkit/SpeechKit;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->mSpeechKitInstance:Lcom/nuance/nmdp/speechkit/SpeechKit;

    .line 134
    iget-object v0, p0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->mSpeechKitInstance:Lcom/nuance/nmdp/speechkit/SpeechKit;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/SpeechKit;->connect()V

    .line 136
    .end local v2    # "appName":Ljava/lang/String;
    .end local v3    # "server":Ljava/lang/String;
    .end local v4    # "portId":S
    .end local v6    # "appKey":[B
    .end local v9    # "hexString":Ljava/lang/StringBuilder;
    :cond_dd
    return-void
.end method

.method private getSpeechKitInstance()Lcom/nuance/nmdp/speechkit/SpeechKit;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->mCurrentLanguageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nuance/speech/dragon/SpeechKitWrapper;->createSpeechKitInstance(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->mSpeechKitInstance:Lcom/nuance/nmdp/speechkit/SpeechKit;

    return-object v0
.end method

.method private releaseSpeechKitInstance()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 140
    iget-object v0, p0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->mCustomWordSyncWrapper:Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;

    if-eqz v0, :cond_c

    .line 142
    iget-object v0, p0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->mCustomWordSyncWrapper:Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;

    invoke-virtual {v0}, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;->releaseCustomWordsSynchronizerInstance()V

    .line 143
    iput-object v1, p0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->mCustomWordSyncWrapper:Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;

    .line 145
    :cond_c
    iget-object v0, p0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->mSpeechKitInstance:Lcom/nuance/nmdp/speechkit/SpeechKit;

    if-eqz v0, :cond_1c

    .line 146
    iget-object v0, p0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->mSpeechKitInstance:Lcom/nuance/nmdp/speechkit/SpeechKit;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/SpeechKit;->cancelCurrent()V

    .line 147
    iget-object v0, p0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->mSpeechKitInstance:Lcom/nuance/nmdp/speechkit/SpeechKit;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/SpeechKit;->release()V

    .line 148
    iput-object v1, p0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->mSpeechKitInstance:Lcom/nuance/nmdp/speechkit/SpeechKit;

    .line 150
    :cond_1c
    return-void
.end method


# virtual methods
.method public final cancelCustomWordSync()V
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->mCustomWordSyncWrapper:Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;

    if-eqz v0, :cond_9

    .line 161
    iget-object v0, p0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->mCustomWordSyncWrapper:Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;

    invoke-virtual {v0}, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;->cancel()V

    .line 163
    :cond_9
    return-void
.end method

.method public final createCustomWordsSynchronizer(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer$Listener;Landroid/os/Handler;)Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer;
    .registers 6
    .param p1, "dictationType"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer$Listener;
    .param p3, "callbackHandler"    # Landroid/os/Handler;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/nuance/speech/dragon/SpeechKitWrapper;->getSpeechKitInstance()Lcom/nuance/nmdp/speechkit/SpeechKit;

    move-result-object v0

    .line 57
    invoke-virtual {p0}, Lcom/nuance/speech/dragon/SpeechKitWrapper;->getCurrentLanguageCode()Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/nuance/nmdp/speechkit/SpeechKit;->createCustomWordsSynchronizer(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer$Listener;Landroid/os/Handler;)Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer;

    move-result-object v0

    return-object v0
.end method

.method public final createTextContextRecognizer(Ljava/lang/String;ILcom/nuance/nmdp/speechkit/TextContext;Lcom/nuance/nmdp/speechkit/Recognizer$Listener;Landroid/os/Handler;)Lcom/nuance/nmdp/speechkit/Recognizer;
    .registers 14
    .param p1, "recognizerType"    # Ljava/lang/String;
    .param p2, "endOfSpeechDetectionMode"    # I
    .param p3, "textContext"    # Lcom/nuance/nmdp/speechkit/TextContext;
    .param p4, "listener"    # Lcom/nuance/nmdp/speechkit/Recognizer$Listener;
    .param p5, "callbackHandler"    # Landroid/os/Handler;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 45
    sget-object v0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "#createTextContextRecognizer: langCode: "

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/nuance/speech/dragon/SpeechKitWrapper;->getCurrentLanguageCode()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 46
    sget-object v0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "#createTextContextRecognizer: server: "

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/nuance/speech/dragon/SpeechKitWrapper;->getCurrentLanguageServer()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 48
    invoke-direct {p0}, Lcom/nuance/speech/dragon/SpeechKitWrapper;->getSpeechKitInstance()Lcom/nuance/nmdp/speechkit/SpeechKit;

    move-result-object v0

    .line 49
    invoke-virtual {p0}, Lcom/nuance/speech/dragon/SpeechKitWrapper;->getSpeechResultsMode()Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    move-result-object v3

    invoke-virtual {p0}, Lcom/nuance/speech/dragon/SpeechKitWrapper;->getCurrentLanguageCode()Ljava/lang/String;

    move-result-object v4

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 48
    invoke-virtual/range {v0 .. v7}, Lcom/nuance/nmdp/speechkit/SpeechKit;->createTextContextRecognizer(Ljava/lang/String;ILcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/TextContext;Lcom/nuance/nmdp/speechkit/Recognizer$Listener;Landroid/os/Handler;)Lcom/nuance/nmdp/speechkit/Recognizer;

    move-result-object v0

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public final getCurrentLanguageCode()Ljava/lang/String;
    .registers 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->mSpeechConfig:Lcom/nuance/speech/SpeechConfig;

    invoke-virtual {p0}, Lcom/nuance/speech/dragon/SpeechKitWrapper;->getCurrentLanguageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/speech/SpeechConfig;->getLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCurrentLanguageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->mCurrentLanguageName:Ljava/lang/String;

    return-object v0
.end method

.method public final getCurrentLanguageServer()Ljava/lang/String;
    .registers 3

    .prologue
    .line 69
    iget-object v0, p0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->mSpeechConfig:Lcom/nuance/speech/SpeechConfig;

    invoke-virtual {p0}, Lcom/nuance/speech/dragon/SpeechKitWrapper;->getCurrentLanguageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/speech/SpeechConfig;->getLanguageServerName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized getCustomWordsSyncWrapper(Lcom/nuance/swype/input/udb/UserDictionaryIterator;)Lcom/nuance/speech/CustomWordSynchronizer;
    .registers 3
    .param p1, "iterator"    # Lcom/nuance/swype/input/udb/UserDictionaryIterator;

    .prologue
    .line 153
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->mCustomWordSyncWrapper:Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;

    if-nez v0, :cond_c

    .line 154
    new-instance v0, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;

    invoke-direct {v0, p0, p1}, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;-><init>(Lcom/nuance/speech/dragon/SpeechKitWrapper;Lcom/nuance/swype/input/udb/UserDictionaryIterator;)V

    iput-object v0, p0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->mCustomWordSyncWrapper:Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;

    .line 156
    :cond_c
    iget-object v0, p0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->mCustomWordSyncWrapper:Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object v0

    .line 153
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getSpeechCmd()Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;
    .registers 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->mSpeechConfig:Lcom/nuance/speech/SpeechConfig;

    invoke-virtual {p0}, Lcom/nuance/speech/dragon/SpeechKitWrapper;->getCurrentLanguageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/speech/SpeechConfig;->getSpeechCmd(Ljava/lang/String;)Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;

    move-result-object v0

    return-object v0
.end method

.method public final getSpeechResultsMode()Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;
    .registers 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->mSpeechConfig:Lcom/nuance/speech/SpeechConfig;

    invoke-virtual {p0}, Lcom/nuance/speech/dragon/SpeechKitWrapper;->getCurrentLanguageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/speech/SpeechConfig;->getResponseMode(Ljava/lang/String;)Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    move-result-object v0

    return-object v0
.end method

.method public final isCustomWordsSynchronizationSupported()Z
    .registers 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->mSpeechConfig:Lcom/nuance/speech/SpeechConfig;

    invoke-virtual {p0}, Lcom/nuance/speech/dragon/SpeechKitWrapper;->getCurrentLanguageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/speech/SpeechConfig;->isCustomWordsSynchronizationSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final declared-synchronized release()V
    .registers 2

    .prologue
    .line 38
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/nuance/speech/dragon/SpeechKitWrapper;->releaseSpeechKitInstance()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->mSpeechKitInstance:Lcom/nuance/nmdp/speechkit/SpeechKit;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 40
    monitor-exit p0

    return-void

    .line 38
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
