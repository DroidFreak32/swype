.class public final Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;
.super Ljava/lang/Object;
.source "TransactionConfig.java"


# static fields
.field static final CMD_SETS:[[Ljava/lang/String;

.field private static final UNKNOWN:Ljava/lang/String; = "unknown"

.field private static sessionuniqueval:I

.field private static sessionuniquevaladj1:I

.field private static sessionuniquevaladj2:I


# instance fields
.field private _apn:Ljava/lang/String;

.field private _apnDiscovered:Z

.field private final _appContext:Ljava/lang/Object;

.field private final _appId:Ljava/lang/String;

.field private final _appKey:[B

.field private final _appVersion:Ljava/lang/String;

.field private _cmdType:Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;

.field private final _deviceId:Ljava/lang/String;

.field private final _host:Ljava/lang/String;

.field private final _oemConfig:Lcom/nuance/nmdp/speechkit/oem/OemConfig;

.field private final _port:I

.field private _subscriptionId:Ljava/lang/String;

.field private final _useSsl:Z

.field private appserver_cmd:Ljava/lang/String;

.field private asr_cmd:Ljava/lang/String;

.field private data_upload_cmd:Ljava/lang/String;

.field private language_cmd:Ljava/lang/String;

.field private log_revision_cmd:Ljava/lang/String;

.field private reset_user_profile_cmd:Ljava/lang/String;

.field private tts_cmd:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 37
    new-array v0, v6, [[Ljava/lang/String;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "NVC_ASR_CMD"

    aput-object v2, v1, v4

    const-string/jumbo v2, "NVC_DATA_UPLOAD_CMD"

    aput-object v2, v1, v5

    const-string/jumbo v2, "NVC_LOG_REVISION_CMD"

    aput-object v2, v1, v6

    const-string/jumbo v2, "NVC_RESET_USER_PROFILE_CMD"

    aput-object v2, v1, v7

    const-string/jumbo v2, "NVC_APPSERVER_CMD"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string/jumbo v3, "NVC_GET_DICTATION_LANGUAGE"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "NVC_TTS_CMD"

    aput-object v3, v1, v2

    aput-object v1, v0, v4

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "DRAGON_NLU_ASR_CMD"

    aput-object v2, v1, v4

    const-string/jumbo v2, "DRAGON_NLU_DATA_UPLOAD_CMD"

    aput-object v2, v1, v5

    const-string/jumbo v2, "DRAGON_NLU_LOG_REVISION_CMD"

    aput-object v2, v1, v6

    const-string/jumbo v2, "DRAGON_NLU_RESET_USER_PROFILE_CMD"

    aput-object v2, v1, v7

    const-string/jumbo v2, "DRAGON_NLU_APPSERVER_CMD"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string/jumbo v3, "ACADIA_GET_DICTATION_LANGUAGE_V2"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "DRAGON_NLU_TTS_CMD"

    aput-object v3, v1, v2

    aput-object v1, v0, v5

    sput-object v0, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->CMD_SETS:[[Ljava/lang/String;

    .line 272
    const v0, 0x19120623

    sput v0, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->sessionuniqueval:I

    .line 273
    const v0, 0x18f8a016

    sput v0, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->sessionuniquevaladj1:I

    .line 274
    const v0, 0x5580f982

    sput v0, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->sessionuniquevaladj2:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;[BLcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;)V
    .locals 1
    .param p1, "appContext"    # Ljava/lang/Object;
    .param p2, "appVersion"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "subscriptionId"    # Ljava/lang/String;
    .param p6, "useSsl"    # Z
    .param p7, "appId"    # Ljava/lang/String;
    .param p8, "appKey"    # [B
    .param p9, "type"    # Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p7, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->_appId:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->_appVersion:Ljava/lang/String;

    .line 66
    iput-object p8, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->_appKey:[B

    .line 67
    iput-object p3, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->_host:Ljava/lang/String;

    .line 68
    iput p4, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->_port:I

    .line 69
    iput-boolean p6, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->_useSsl:Z

    .line 70
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->_appContext:Ljava/lang/Object;

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->_apn:Ljava/lang/String;

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->_apnDiscovered:Z

    .line 73
    new-instance v0, Lcom/nuance/nmdp/speechkit/oem/OemConfig;

    invoke-direct {v0, p1}, Lcom/nuance/nmdp/speechkit/oem/OemConfig;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->_oemConfig:Lcom/nuance/nmdp/speechkit/oem/OemConfig;

    .line 74
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->_oemConfig:Lcom/nuance/nmdp/speechkit/oem/OemConfig;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/oem/OemConfig;->uid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->_deviceId:Ljava/lang/String;

    .line 75
    iput-object p5, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->_subscriptionId:Ljava/lang/String;

    .line 76
    iput-object p9, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->_cmdType:Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;

    .line 78
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->_cmdType:Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;

    invoke-direct {p0, v0}, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->loadCommands(Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;)V

    .line 79
    return-void
.end method

.method private loadCommands(Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;)V
    .locals 2
    .param p1, "type"    # Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;

    .prologue
    .line 82
    sget-object v0, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->CMD_SETS:[[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->asr_cmd:Ljava/lang/String;

    .line 83
    sget-object v0, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->CMD_SETS:[[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->data_upload_cmd:Ljava/lang/String;

    .line 84
    sget-object v0, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->CMD_SETS:[[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->log_revision_cmd:Ljava/lang/String;

    .line 85
    sget-object v0, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->CMD_SETS:[[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->reset_user_profile_cmd:Ljava/lang/String;

    .line 86
    sget-object v0, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->CMD_SETS:[[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    const/4 v1, 0x4

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->appserver_cmd:Ljava/lang/String;

    .line 87
    sget-object v0, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->CMD_SETS:[[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    const/4 v1, 0x5

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->language_cmd:Ljava/lang/String;

    .line 88
    sget-object v0, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->CMD_SETS:[[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    const/4 v1, 0x6

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->tts_cmd:Ljava/lang/String;

    .line 89
    return-void
.end method


# virtual methods
.method public final apn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->_apnDiscovered:Z

    if-nez v0, :cond_0

    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->_apnDiscovered:Z

    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->_host:Ljava/lang/String;

    iget v1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->_port:I

    int-to-short v1, v1

    invoke-static {v0, v1}, Lcom/nuance/nmsp/client/sdk/components/general/NMSPManager;->discoverAPN(Ljava/lang/String;S)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->_apn:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->_apn:Ljava/lang/String;

    return-object v0

    .line 201
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->_oemConfig:Lcom/nuance/nmdp/speechkit/oem/OemConfig;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/oem/OemConfig;->defaultApn()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->_apn:Ljava/lang/String;

    goto :goto_0
.end method

.method public final appVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->_appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final applicationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->_appId:Ljava/lang/String;

    return-object v0
.end method

.method public final applicationKey()[B
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->_appKey:[B

    return-object v0
.end method

.method public final carrier()Ljava/lang/String;
    .locals 2

    .prologue
    .line 133
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->_oemConfig:Lcom/nuance/nmdp/speechkit/oem/OemConfig;

    invoke-virtual {v1}, Lcom/nuance/nmdp/speechkit/oem/OemConfig;->carrier()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "carrier":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string/jumbo v0, "unknown"

    .end local v0    # "carrier":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public final clientVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    invoke-static {}, Lcom/nuance/nmdp/speechkit/util/Config;->getClientVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final context()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->_appContext:Ljava/lang/Object;

    return-object v0
.end method

.method public final defaultLanguage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 139
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->_oemConfig:Lcom/nuance/nmdp/speechkit/oem/OemConfig;

    invoke-virtual {v1}, Lcom/nuance/nmdp/speechkit/oem/OemConfig;->defaultLanguage()Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "lang":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string/jumbo v0, "unknown"

    .end local v0    # "lang":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public final getAppserverCmd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->appserver_cmd:Ljava/lang/String;

    return-object v0
.end method

.method public final getAsrCmd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->asr_cmd:Ljava/lang/String;

    return-object v0
.end method

.method public final getCmdSetType()Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->_cmdType:Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;

    return-object v0
.end method

.method public final getDataUploadCmd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->data_upload_cmd:Ljava/lang/String;

    return-object v0
.end method

.method public final getLanguageCmd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->language_cmd:Ljava/lang/String;

    return-object v0
.end method

.method public final getLogRevisionCmd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->log_revision_cmd:Ljava/lang/String;

    return-object v0
.end method

.method public final getResetUerProfileCmd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->reset_user_profile_cmd:Ljava/lang/String;

    return-object v0
.end method

.method public final getTtsCmd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->tts_cmd:Ljava/lang/String;

    return-object v0
.end method

.method public final host()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->_host:Ljava/lang/String;

    return-object v0
.end method

.method public final locale()Ljava/lang/String;
    .locals 2

    .prologue
    .line 157
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->_oemConfig:Lcom/nuance/nmdp/speechkit/oem/OemConfig;

    invoke-virtual {v1}, Lcom/nuance/nmdp/speechkit/oem/OemConfig;->locale()Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "locale":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string/jumbo v0, "unknown"

    .end local v0    # "locale":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public final message([B[B)[B
    .locals 20
    .param p1, "msg"    # [B
    .param p2, "exc"    # [B

    .prologue
    .line 276
    if-nez p2, :cond_2

    const/4 v2, 0x1

    .line 277
    .local v2, "NO_SESSIONID":Z
    :goto_0
    const/16 v14, 0x20

    new-array v3, v14, [I

    fill-array-data v3, :array_0

    .line 283
    .local v3, "a":[I
    const/16 v14, 0x60

    new-array v7, v14, [B

    .line 288
    .local v7, "h":[B
    const/4 v9, 0x0

    .local v9, "n":I
    const/4 v12, 0x0

    .line 290
    .local v12, "p":I
    if-eqz v2, :cond_0

    .line 297
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->_oemConfig:Lcom/nuance/nmdp/speechkit/oem/OemConfig;

    invoke-virtual {v14}, Lcom/nuance/nmdp/speechkit/oem/OemConfig;->seconds()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->_oemConfig:Lcom/nuance/nmdp/speechkit/oem/OemConfig;

    invoke-virtual {v15}, Lcom/nuance/nmdp/speechkit/oem/OemConfig;->milliseconds()I

    move-result v15

    add-int/2addr v14, v15

    .line 298
    const v15, 0x6ae7e91a

    add-int v9, v14, v15

    .line 299
    move v12, v9

    .line 313
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->_oemConfig:Lcom/nuance/nmdp/speechkit/oem/OemConfig;

    invoke-virtual {v14}, Lcom/nuance/nmdp/speechkit/oem/OemConfig;->appName()[B

    move-result-object v4

    .line 314
    .local v4, "appName":[B
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->_oemConfig:Lcom/nuance/nmdp/speechkit/oem/OemConfig;

    invoke-virtual {v14}, Lcom/nuance/nmdp/speechkit/oem/OemConfig;->packageName()[B

    move-result-object v13

    .line 316
    .local v13, "packageName":[B
    array-length v14, v4

    new-array v5, v14, [I

    .line 317
    .local v5, "f":[I
    array-length v14, v13

    new-array v6, v14, [I

    .line 319
    .local v6, "g":[I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    array-length v14, v5

    if-ge v8, v14, :cond_3

    .line 321
    aget-byte v14, v4, v8

    aput v14, v5, v8

    .line 322
    aget v14, v5, v8

    if-gez v14, :cond_1

    aget v14, v5, v8

    add-int/lit16 v14, v14, 0x100

    aput v14, v5, v8

    .line 319
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 276
    .end local v2    # "NO_SESSIONID":Z
    .end local v3    # "a":[I
    .end local v4    # "appName":[B
    .end local v5    # "f":[I
    .end local v6    # "g":[I
    .end local v7    # "h":[B
    .end local v8    # "i":I
    .end local v9    # "n":I
    .end local v12    # "p":I
    .end local v13    # "packageName":[B
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 325
    .restart local v2    # "NO_SESSIONID":Z
    .restart local v3    # "a":[I
    .restart local v4    # "appName":[B
    .restart local v5    # "f":[I
    .restart local v6    # "g":[I
    .restart local v7    # "h":[B
    .restart local v8    # "i":I
    .restart local v9    # "n":I
    .restart local v12    # "p":I
    .restart local v13    # "packageName":[B
    :cond_3
    const/4 v8, 0x0

    :goto_2
    array-length v14, v6

    if-ge v8, v14, :cond_5

    .line 327
    aget-byte v14, v13, v8

    aput v14, v6, v8

    .line 328
    aget v14, v6, v8

    if-gez v14, :cond_4

    aget v14, v6, v8

    add-int/lit16 v14, v14, 0x100

    aput v14, v6, v8

    .line 325
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 331
    :cond_5
    const/4 v8, 0x0

    const-wide/16 v10, 0x0

    .local v10, "j":J
    :goto_3
    const/16 v14, 0x20

    if-ge v8, v14, :cond_b

    .line 333
    if-eqz v2, :cond_8

    .line 335
    sget v14, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->sessionuniqueval:I

    sget v15, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->sessionuniquevaladj1:I

    sub-int/2addr v14, v15

    mul-int/2addr v14, v12

    sget v15, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->sessionuniquevaladj2:I

    add-int/2addr v14, v15

    sget v15, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->sessionuniqueval:I

    sub-int v12, v14, v15

    .line 336
    if-eqz v5, :cond_7

    .line 337
    array-length v14, v5

    if-lt v8, v14, :cond_6

    .line 338
    const/4 v5, 0x0

    .line 356
    :goto_4
    long-to-int v14, v10

    int-to-byte v14, v14

    aput-byte v14, v7, v8

    .line 331
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 340
    :cond_6
    aget v14, v3, v8

    aget v15, v5, v8

    add-int/2addr v14, v15

    and-int/lit16 v15, v12, 0xff

    add-int/2addr v14, v15

    int-to-long v14, v14

    const/16 v16, 0x8

    shr-long v16, v10, v16

    add-long v10, v14, v16

    goto :goto_4

    .line 343
    :cond_7
    int-to-long v10, v12

    goto :goto_4

    .line 346
    :cond_8
    if-eqz v5, :cond_a

    .line 347
    array-length v14, v5

    if-lt v8, v14, :cond_9

    .line 348
    const/4 v5, 0x0

    goto :goto_4

    .line 350
    :cond_9
    aget v14, v3, v8

    aget v15, v5, v8

    add-int/2addr v14, v15

    rem-int/lit8 v15, v8, 0x10

    aget-byte v15, p2, v15

    add-int/2addr v14, v15

    int-to-long v14, v14

    const/16 v16, 0x8

    shr-long v16, v10, v16

    add-long v10, v14, v16

    goto :goto_4

    .line 353
    :cond_a
    sget v14, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->sessionuniqueval:I

    sget v15, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->sessionuniquevaladj1:I

    sub-int/2addr v14, v15

    int-to-long v14, v14

    mul-long/2addr v14, v10

    sget v16, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->sessionuniquevaladj2:I

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    sget v16, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->sessionuniqueval:I

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    sub-long v10, v14, v16

    goto :goto_4

    .line 359
    :cond_b
    const/4 v8, 0x0

    const-wide/16 v10, 0x0

    :goto_5
    const/16 v14, 0x40

    if-ge v8, v14, :cond_13

    .line 361
    if-eqz v2, :cond_f

    .line 363
    sget v14, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->sessionuniqueval:I

    sget v15, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->sessionuniquevaladj1:I

    sub-int/2addr v14, v15

    mul-int/2addr v14, v12

    sget v15, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->sessionuniquevaladj2:I

    add-int/2addr v14, v15

    sget v15, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->sessionuniqueval:I

    sub-int v12, v14, v15

    .line 364
    if-eqz v6, :cond_e

    .line 365
    array-length v14, v6

    if-ge v8, v14, :cond_c

    const/16 v14, 0x20

    if-lt v8, v14, :cond_d

    .line 366
    :cond_c
    const/4 v6, 0x0

    .line 384
    :goto_6
    add-int/lit8 v14, v8, 0x20

    long-to-int v15, v10

    int-to-byte v15, v15

    aput-byte v15, v7, v14

    .line 359
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 368
    :cond_d
    aget v14, v3, v8

    aget v15, v6, v8

    add-int/2addr v14, v15

    and-int/lit16 v15, v12, 0xff

    add-int/2addr v14, v15

    int-to-long v14, v14

    const/16 v16, 0x8

    shr-long v16, v10, v16

    add-long v10, v14, v16

    goto :goto_6

    .line 371
    :cond_e
    int-to-long v10, v12

    goto :goto_6

    .line 374
    :cond_f
    if-eqz v6, :cond_12

    .line 375
    array-length v14, v6

    if-ge v8, v14, :cond_10

    const/16 v14, 0x20

    if-lt v8, v14, :cond_11

    .line 376
    :cond_10
    const/4 v6, 0x0

    goto :goto_6

    .line 378
    :cond_11
    aget v14, v3, v8

    aget v15, v6, v8

    add-int/2addr v14, v15

    rem-int/lit8 v15, v8, 0x10

    aget-byte v15, p2, v15

    add-int/2addr v14, v15

    int-to-long v14, v14

    const/16 v16, 0x8

    shr-long v16, v10, v16

    add-long v10, v14, v16

    goto :goto_6

    .line 381
    :cond_12
    sget v14, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->sessionuniqueval:I

    sget v15, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->sessionuniquevaladj1:I

    sub-int/2addr v14, v15

    int-to-long v14, v14

    mul-long/2addr v14, v10

    sget v16, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->sessionuniquevaladj2:I

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    sget v16, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->sessionuniqueval:I

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    sub-long v10, v14, v16

    goto :goto_6

    .line 387
    :cond_13
    if-eqz v2, :cond_15

    .line 389
    sget v14, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->sessionuniqueval:I

    sget v15, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->sessionuniquevaladj1:I

    sub-int/2addr v14, v15

    mul-int/2addr v14, v12

    sget v15, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->sessionuniquevaladj2:I

    add-int/2addr v14, v15

    sget v15, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->sessionuniqueval:I

    sub-int/2addr v14, v15

    .line 390
    int-to-long v10, v14

    .line 396
    :goto_7
    const-wide/16 v14, 0x0

    cmp-long v14, v10, v14

    if-nez v14, :cond_16

    .line 397
    const-wide/16 v10, 0x1

    .line 401
    :goto_8
    const/4 v8, 0x0

    :goto_9
    const/16 v14, 0x60

    if-ge v8, v14, :cond_19

    .line 403
    :cond_14
    const/4 v14, 0x1

    shr-long v14, v10, v14

    const/16 v16, 0x1

    shr-long v16, v10, v16

    xor-long v16, v16, v10

    const/16 v18, 0x3

    shr-long v18, v10, v18

    xor-long v16, v16, v18

    const/16 v18, 0x6

    shr-long v18, v10, v18

    xor-long v16, v16, v18

    const-wide/16 v18, 0x1

    and-long v16, v16, v18

    const/16 v18, 0x6

    shl-long v16, v16, v18

    or-long v10, v14, v16

    .line 404
    const-wide/16 v14, 0x60

    cmp-long v14, v10, v14

    if-gtz v14, :cond_14

    const-wide/16 v14, 0x0

    cmp-long v14, v10, v14

    if-ltz v14, :cond_14

    .line 406
    if-eqz v2, :cond_18

    .line 408
    const-wide/16 v14, 0x1a

    cmp-long v14, v10, v14

    if-lez v14, :cond_17

    .line 409
    long-to-int v14, v10

    add-int/lit8 v14, v14, 0x3

    aget-byte v15, v7, v8

    aput-byte v15, p1, v14

    .line 401
    :goto_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 392
    :cond_15
    const-wide/16 v10, 0x0

    goto :goto_7

    .line 399
    :cond_16
    const-wide/16 v14, 0x7f

    and-long/2addr v10, v14

    goto :goto_8

    .line 411
    :cond_17
    long-to-int v14, v10

    add-int/lit8 v14, v14, -0x1

    aget-byte v15, v7, v8

    aput-byte v15, p1, v14

    goto :goto_a

    .line 413
    :cond_18
    long-to-int v14, v10

    add-int/lit8 v14, v14, -0x1

    aget-byte v15, v7, v8

    aput-byte v15, p1, v14

    goto :goto_a

    .line 418
    :cond_19
    if-eqz v2, :cond_1a

    .line 420
    const/16 v14, 0x1a

    and-int/lit16 v15, v9, 0xff

    int-to-byte v15, v15

    aput-byte v15, p1, v14

    .line 421
    const/16 v14, 0x1b

    shr-int/lit8 v15, v9, 0x8

    and-int/lit16 v15, v15, 0xff

    int-to-byte v15, v15

    aput-byte v15, p1, v14

    .line 422
    const/16 v14, 0x1c

    shr-int/lit8 v15, v9, 0x10

    and-int/lit16 v15, v15, 0xff

    int-to-byte v15, v15

    aput-byte v15, p1, v14

    .line 423
    const/16 v14, 0x1d

    shr-int/lit8 v15, v9, 0x18

    and-int/lit16 v15, v15, 0xff

    int-to-byte v15, v15

    aput-byte v15, p1, v14

    .line 425
    :cond_1a
    return-object p1

    .line 277
    :array_0
    .array-data 4
        0x1a
        0xe9
        0xe7
        0x6a
        0xb1
        0x2f
        0x7a
        0xb9
        0x9a
        0x9e
        0x74
        0xad
        0x7a
        0x98
        0x5e
        0x9c
        0xb6
        0xaf
        0x7a
        0xbb
        0x72
        0x25
        0xea
        0xde
        0x9b
        0x24
        0xa5
        0x6a
        0xd7
        0xab
        0x29
        0x5d
    .end array-data
.end method

.method public final model()Ljava/lang/String;
    .locals 2

    .prologue
    .line 145
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->_oemConfig:Lcom/nuance/nmdp/speechkit/oem/OemConfig;

    invoke-virtual {v1}, Lcom/nuance/nmdp/speechkit/oem/OemConfig;->model()Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "model":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string/jumbo v0, "unknown"

    .end local v0    # "model":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public final networkType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 168
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->_oemConfig:Lcom/nuance/nmdp/speechkit/oem/OemConfig;

    invoke-virtual {v1}, Lcom/nuance/nmdp/speechkit/oem/OemConfig;->networkType()Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "networkType":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string/jumbo v0, "unknown"

    .end local v0    # "networkType":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public final nmdpVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    invoke-static {}, Lcom/nuance/nmdp/speechkit/util/Config;->getNmdpVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final os()Ljava/lang/String;
    .locals 2

    .prologue
    .line 151
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->_oemConfig:Lcom/nuance/nmdp/speechkit/oem/OemConfig;

    invoke-virtual {v1}, Lcom/nuance/nmdp/speechkit/oem/OemConfig;->os()Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "os":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string/jumbo v0, "unknown"

    .end local v0    # "os":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public final playerCodec()Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->_oemConfig:Lcom/nuance/nmdp/speechkit/oem/OemConfig;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/oem/OemConfig;->playerCodec()Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    move-result-object v0

    return-object v0
.end method

.method public final port()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->_port:I

    return v0
.end method

.method public final recorderCodec()Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->_oemConfig:Lcom/nuance/nmdp/speechkit/oem/OemConfig;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/oem/OemConfig;->recorderCodec()Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    move-result-object v0

    return-object v0
.end method

.method public final setAppserverCmd(Ljava/lang/String;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->appserver_cmd:Ljava/lang/String;

    .line 245
    return-void
.end method

.method public final setAsrCmd(Ljava/lang/String;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->asr_cmd:Ljava/lang/String;

    .line 213
    return-void
.end method

.method public final setCmdSetType(Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;)V
    .locals 1
    .param p1, "type"    # Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->_cmdType:Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;

    .line 265
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->_cmdType:Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;

    invoke-direct {p0, v0}, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->loadCommands(Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;)V

    .line 266
    return-void
.end method

.method public final setDataUploadCmd(Ljava/lang/String;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->data_upload_cmd:Ljava/lang/String;

    .line 221
    return-void
.end method

.method public final setLanguageCmd(Ljava/lang/String;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->language_cmd:Ljava/lang/String;

    .line 253
    return-void
.end method

.method public final setLogRevisionCmd(Ljava/lang/String;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->log_revision_cmd:Ljava/lang/String;

    .line 229
    return-void
.end method

.method public final setResetUerProfileCmd(Ljava/lang/String;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->reset_user_profile_cmd:Ljava/lang/String;

    .line 237
    return-void
.end method

.method public final setTtsCmd(Ljava/lang/String;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->tts_cmd:Ljava/lang/String;

    .line 261
    return-void
.end method

.method public final ssl()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->_useSsl:Z

    return v0
.end method

.method public final subscriptionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->_subscriptionId:Ljava/lang/String;

    return-object v0
.end method

.method public final uid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->_deviceId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, "unknown"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->_deviceId:Ljava/lang/String;

    goto :goto_0
.end method
