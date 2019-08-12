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
    .locals 1

    .prologue
    .line 20
    const-string v0, "SpeechKitWrapper"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "languageName"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->mSpeechKitInstance:Lcom/nuance/nmdp/speechkit/SpeechKit;

    .line 33
    iput-object p1, p0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->mContext:Landroid/content/Context;

    .line 34
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getSpeechConfig()Lcom/nuance/speech/SpeechConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->mSpeechConfig:Lcom/nuance/speech/SpeechConfig;

    .line 35
    invoke-direct {p0, p2}, Lcom/nuance/speech/dragon/SpeechKitWrapper;->createSpeechKitInstance(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method private createSpeechKitInstance(Ljava/lang/String;)V
    .locals 12
    .param p1, "languageName"    # Ljava/lang/String;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->mSpeechKitInstance:Lcom/nuance/nmdp/speechkit/SpeechKit;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->mCurrentLanguageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    invoke-direct {p0}, Lcom/nuance/speech/dragon/SpeechKitWrapper;->releaseSpeechKitInstance()V

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->mSpeechKitInstance:Lcom/nuance/nmdp/speechkit/SpeechKit;

    if-nez v0, :cond_3

    .line 99
    iput-object p1, p0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->mCurrentLanguageName:Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->mSpeechConfig:Lcom/nuance/speech/SpeechConfig;

    invoke-virtual {v0}, Lcom/nuance/speech/SpeechConfig;->getAppName()Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "appName":Ljava/lang/String;
    iget-object v0, p0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->mSpeechConfig:Lcom/nuance/speech/SpeechConfig;

    invoke-virtual {p0}, Lcom/nuance/speech/dragon/SpeechKitWrapper;->getCurrentLanguageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/speech/SpeechConfig;->getLanguageServerName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, "server":Ljava/lang/String;
    iget-object v0, p0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->mSpeechConfig:Lcom/nuance/speech/SpeechConfig;

    invoke-virtual {p0}, Lcom/nuance/speech/dragon/SpeechKitWrapper;->getCurrentLanguageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/speech/SpeechConfig;->getPortId(Ljava/lang/String;)S

    move-result v4

    .line 103
    .local v4, "portId":S
    iget-object v0, p0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->mSpeechConfig:Lcom/nuance/speech/SpeechConfig;

    iget-object v1, p0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/nuance/speech/SpeechConfig;->getAppKey(Landroid/content/Context;)[B

    move-result-object v6

    .line 105
    .local v6, "appKey":[B
    sget-object v0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "appName: "

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 106
    sget-object v0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "server: "

    invoke-virtual {v0, v1, v3}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 107
    sget-object v0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "portId: "

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 110
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .local v9, "hexString":Ljava/lang/StringBuilder;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    array-length v0, v6

    if-ge v10, v0, :cond_2

    .line 112
    aget-byte v0, v6, v10

    and-int/lit16 v11, v0, 0xff

    .line 113
    .local v11, "v":I
    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    .line 114
    .local v8, "hex":Ljava/lang/String;
    const/16 v0, 0x10

    if-ge v11, v0, :cond_1

    .line 115
    const/16 v0, 0x30

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    :cond_1
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 119
    .end local v8    # "hex":Ljava/lang/String;
    .end local v11    # "v":I
    :cond_2
    sget-object v0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "AppKey "

    array-length v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v7, " bytes"

    invoke-virtual {v0, v1, v5, v7}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 120
    sget-object v0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "AppKey: "

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 122
    iget-object v0, p0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getBuildInfo()Lcom/nuance/swype/input/BuildInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/BuildInfo;->getBuildVersion()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/nuance/speech/dragon/SpeechKitWrapper;->getSpeechCmd()Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/nuance/nmdp/speechkit/SpeechKit;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[BLcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;)Lcom/nuance/nmdp/speechkit/SpeechKit;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->mSpeechKitInstance:Lcom/nuance/nmdp/speechkit/SpeechKit;

    .line 131
    iget-object v0, p0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->mSpeechKitInstance:Lcom/nuance/nmdp/speechkit/SpeechKit;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/SpeechKit;->connect()V

    .line 133
    .end local v2    # "appName":Ljava/lang/String;
    .end local v3    # "server":Ljava/lang/String;
    .end local v4    # "portId":S
    .end local v6    # "appKey":[B
    .end local v9    # "hexString":Ljava/lang/StringBuilder;
    .end local v10    # "i":I
    :cond_3
    return-void
.end method

.method private getSpeechKitInstance()Lcom/nuance/nmdp/speechkit/SpeechKit;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->mCurrentLanguageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nuance/speech/dragon/SpeechKitWrapper;->createSpeechKitInstance(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->mSpeechKitInstance:Lcom/nuance/nmdp/speechkit/SpeechKit;

    return-object v0
.end method

.method private releaseSpeechKitInstance()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 137
    iget-object v0, p0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->mCustomWordSyncWrapper:Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->mCustomWordSyncWrapper:Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;

    invoke-virtual {v0}, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;->releaseCustomWordsSynchronizerInstance()V

    .line 140
    iput-object v1, p0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->mCustomWordSyncWrapper:Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->mSpeechKitInstance:Lcom/nuance/nmdp/speechkit/SpeechKit;

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->mSpeechKitInstance:Lcom/nuance/nmdp/speechkit/SpeechKit;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/SpeechKit;->cancelCurrent()V

    .line 144
    iget-object v0, p0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->mSpeechKitInstance:Lcom/nuance/nmdp/speechkit/SpeechKit;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/SpeechKit;->release()V

    .line 145
    iput-object v1, p0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->mSpeechKitInstance:Lcom/nuance/nmdp/speechkit/SpeechKit;

    .line 147
    :cond_1
    return-void
.end method


# virtual methods
.method public final cancelCustomWordSync()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->mCustomWordSyncWrapper:Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->mCustomWordSyncWrapper:Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;

    invoke-virtual {v0}, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;->cancel()V

    .line 160
    :cond_0
    return-void
.end method

.method public final createCustomWordsSynchronizer(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer$Listener;Landroid/os/Handler;)Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer;
    .locals 2
    .param p1, "dictationType"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer$Listener;
    .param p3, "callbackHandler"    # Landroid/os/Handler;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/nuance/speech/dragon/SpeechKitWrapper;->getSpeechKitInstance()Lcom/nuance/nmdp/speechkit/SpeechKit;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/speech/dragon/SpeechKitWrapper;->getCurrentLanguageCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/nuance/nmdp/speechkit/SpeechKit;->createCustomWordsSynchronizer(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer$Listener;Landroid/os/Handler;)Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer;

    move-result-object v0

    return-object v0
.end method

.method public final createTextContextRecognizer(Ljava/lang/String;ILcom/nuance/nmdp/speechkit/TextContext;Lcom/nuance/nmdp/speechkit/Recognizer$Listener;Landroid/os/Handler;)Lcom/nuance/nmdp/speechkit/Recognizer;
    .locals 8
    .param p1, "recognizerType"    # Ljava/lang/String;
    .param p2, "endOfSpeechDetectionMode"    # I
    .param p3, "textContext"    # Lcom/nuance/nmdp/speechkit/TextContext;
    .param p4, "listener"    # Lcom/nuance/nmdp/speechkit/Recognizer$Listener;
    .param p5, "callbackHandler"    # Landroid/os/Handler;

    .prologue
    .line 46
    sget-object v0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "#createTextContextRecognizer: langCode: "

    invoke-virtual {p0}, Lcom/nuance/speech/dragon/SpeechKitWrapper;->getCurrentLanguageCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 47
    sget-object v0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "#createTextContextRecognizer: server: "

    invoke-virtual {p0}, Lcom/nuance/speech/dragon/SpeechKitWrapper;->getCurrentLanguageServer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 49
    invoke-direct {p0}, Lcom/nuance/speech/dragon/SpeechKitWrapper;->getSpeechKitInstance()Lcom/nuance/nmdp/speechkit/SpeechKit;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/speech/dragon/SpeechKitWrapper;->getSpeechResultsMode()Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    move-result-object v3

    invoke-virtual {p0}, Lcom/nuance/speech/dragon/SpeechKitWrapper;->getCurrentLanguageCode()Ljava/lang/String;

    move-result-object v4

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/nuance/nmdp/speechkit/SpeechKit;->createTextContextRecognizer(Ljava/lang/String;ILcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/TextContext;Lcom/nuance/nmdp/speechkit/Recognizer$Listener;Landroid/os/Handler;)Lcom/nuance/nmdp/speechkit/Recognizer;

    move-result-object v0

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public final getCurrentLanguageCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->mSpeechConfig:Lcom/nuance/speech/SpeechConfig;

    invoke-virtual {p0}, Lcom/nuance/speech/dragon/SpeechKitWrapper;->getCurrentLanguageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/speech/SpeechConfig;->getLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final getCurrentLanguageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->mCurrentLanguageName:Ljava/lang/String;

    return-object v0
.end method

.method public final getCurrentLanguageServer()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->mSpeechConfig:Lcom/nuance/speech/SpeechConfig;

    invoke-virtual {p0}, Lcom/nuance/speech/dragon/SpeechKitWrapper;->getCurrentLanguageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/speech/SpeechConfig;->getLanguageServerName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized getCustomWordsSyncWrapper(Lcom/nuance/swype/input/udb/UserDictionaryIterator;)Lcom/nuance/speech/CustomWordSynchronizer;
    .locals 1
    .param p1, "iterator"    # Lcom/nuance/swype/input/udb/UserDictionaryIterator;

    .prologue
    .line 150
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->mCustomWordSyncWrapper:Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;

    if-nez v0, :cond_0

    .line 151
    new-instance v0, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;

    invoke-direct {v0, p0, p1}, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;-><init>(Lcom/nuance/speech/dragon/SpeechKitWrapper;Lcom/nuance/swype/input/udb/UserDictionaryIterator;)V

    iput-object v0, p0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->mCustomWordSyncWrapper:Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->mCustomWordSyncWrapper:Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getSpeechCmd()Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->mSpeechConfig:Lcom/nuance/speech/SpeechConfig;

    invoke-virtual {p0}, Lcom/nuance/speech/dragon/SpeechKitWrapper;->getCurrentLanguageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/speech/SpeechConfig;->getSpeechCmd(Ljava/lang/String;)Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;

    move-result-object v0

    return-object v0
.end method

.method public final getSpeechResultsMode()Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->mSpeechConfig:Lcom/nuance/speech/SpeechConfig;

    invoke-virtual {p0}, Lcom/nuance/speech/dragon/SpeechKitWrapper;->getCurrentLanguageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/speech/SpeechConfig;->getResponseMode(Ljava/lang/String;)Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    move-result-object v0

    return-object v0
.end method

.method public final isCustomWordsSynchronizationSupported()Z
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->mSpeechConfig:Lcom/nuance/speech/SpeechConfig;

    invoke-virtual {p0}, Lcom/nuance/speech/dragon/SpeechKitWrapper;->getCurrentLanguageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/speech/SpeechConfig;->isCustomWordsSynchronizationSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final declared-synchronized release()V
    .locals 1

    .prologue
    .line 39
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/nuance/speech/dragon/SpeechKitWrapper;->releaseSpeechKitInstance()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/speech/dragon/SpeechKitWrapper;->mSpeechKitInstance:Lcom/nuance/nmdp/speechkit/SpeechKit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    monitor-exit p0

    return-void

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
