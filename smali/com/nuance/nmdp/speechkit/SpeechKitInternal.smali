.class final Lcom/nuance/nmdp/speechkit/SpeechKitInternal;
.super Ljava/lang/Object;
.source "SpeechKitInternal.java"


# static fields
.field private static _instance:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

.field private static _sync:Ljava/lang/Object;

.field private static _syncUpload:Ljava/lang/Object;


# instance fields
.field private final _config:Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;

.field private _currentChecksum:I

.field private _datablock:Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;

.field private _defaultEndPrompt:Lcom/nuance/nmdp/speechkit/Prompt;

.field private _defaultErrorPrompt:Lcom/nuance/nmdp/speechkit/Prompt;

.field private _defaultResultPrompt:Lcom/nuance/nmdp/speechkit/Prompt;

.field private _defaultStartPrompt:Lcom/nuance/nmdp/speechkit/Prompt;

.field private _genericCommand:Lcom/nuance/nmdp/speechkit/CommandProxyBase;

.field private final _host:Ljava/lang/String;

.field private final _id:Ljava/lang/String;

.field private _isCommandInit:Z

.field protected _isValid:Z

.field private _newChecksum:I

.field private final _port:I

.field private final _prompts:Lcom/nuance/nmdp/speechkit/util/List;

.field private _speechKitWrapper:Ljava/lang/Object;

.field private _transactionRunner:Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_instance:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_sync:Ljava/lang/Object;

    .line 694
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_syncUpload:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z[BLcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;)V
    .locals 10
    .param p1, "appContext"    # Ljava/lang/Object;
    .param p2, "appVersion"    # Ljava/lang/String;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "host"    # Ljava/lang/String;
    .param p5, "port"    # I
    .param p6, "subscriptionId"    # Ljava/lang/String;
    .param p7, "useSsl"    # Z
    .param p8, "appKey"    # [B
    .param p9, "type"    # Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 695
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_genericCommand:Lcom/nuance/nmdp/speechkit/CommandProxyBase;

    .line 697
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_isCommandInit:Z

    .line 698
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_currentChecksum:I

    .line 699
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_newChecksum:I

    .line 107
    iput-object p3, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_id:Ljava/lang/String;

    .line 108
    iput-object p4, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_host:Ljava/lang/String;

    .line 109
    iput p5, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_port:I

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_isValid:Z

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_transactionRunner:Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;

    .line 112
    new-instance v0, Lcom/nuance/nmdp/speechkit/util/List;

    invoke-direct {v0}, Lcom/nuance/nmdp/speechkit/util/List;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_prompts:Lcom/nuance/nmdp/speechkit/util/List;

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_speechKitWrapper:Ljava/lang/Object;

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_defaultStartPrompt:Lcom/nuance/nmdp/speechkit/Prompt;

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_defaultEndPrompt:Lcom/nuance/nmdp/speechkit/Prompt;

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_defaultResultPrompt:Lcom/nuance/nmdp/speechkit/Prompt;

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_defaultErrorPrompt:Lcom/nuance/nmdp/speechkit/Prompt;

    .line 120
    new-instance v0, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_host:Ljava/lang/String;

    iget v4, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_port:I

    iget-object v7, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_id:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;[BLcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;)V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_config:Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;

    .line 121
    new-instance v0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal$1;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal$1;-><init>(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;)V

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/util/JobRunner;->addJob(Ljava/lang/Runnable;)V

    .line 128
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;)Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_transactionRunner:Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;

    return-object v0
.end method

.method static synthetic access$002(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;)Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;
    .locals 0
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/SpeechKitInternal;
    .param p1, "x1"    # Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_transactionRunner:Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;

    return-object p1
.end method

.method static synthetic access$100(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;)Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_config:Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;Lcom/nuance/nmdp/speechkit/Prompt;)Lcom/nuance/nmdp/speechkit/Prompt;
    .locals 0
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/SpeechKitInternal;
    .param p1, "x1"    # Lcom/nuance/nmdp/speechkit/Prompt;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_defaultEndPrompt:Lcom/nuance/nmdp/speechkit/Prompt;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;Lcom/nuance/nmdp/speechkit/Prompt;)Lcom/nuance/nmdp/speechkit/Prompt;
    .locals 0
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/SpeechKitInternal;
    .param p1, "x1"    # Lcom/nuance/nmdp/speechkit/Prompt;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_defaultResultPrompt:Lcom/nuance/nmdp/speechkit/Prompt;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;Lcom/nuance/nmdp/speechkit/Prompt;)Lcom/nuance/nmdp/speechkit/Prompt;
    .locals 0
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/SpeechKitInternal;
    .param p1, "x1"    # Lcom/nuance/nmdp/speechkit/Prompt;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_defaultErrorPrompt:Lcom/nuance/nmdp/speechkit/Prompt;

    return-object p1
.end method

.method static synthetic access$200(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;)Lcom/nuance/nmdp/speechkit/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_prompts:Lcom/nuance/nmdp/speechkit/util/List;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_syncUpload:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;)Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_datablock:Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;

    return-object v0
.end method

.method static synthetic access$500(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;)Lcom/nuance/nmdp/speechkit/CommandProxyBase;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_genericCommand:Lcom/nuance/nmdp/speechkit/CommandProxyBase;

    return-object v0
.end method

.method static synthetic access$600(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;)I
    .locals 1
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    .prologue
    .line 23
    iget v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_currentChecksum:I

    return v0
.end method

.method static synthetic access$700(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;)I
    .locals 1
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    .prologue
    .line 23
    iget v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_newChecksum:I

    return v0
.end method

.method static synthetic access$802(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/SpeechKitInternal;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_isCommandInit:Z

    return p1
.end method

.method static synthetic access$902(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;Lcom/nuance/nmdp/speechkit/Prompt;)Lcom/nuance/nmdp/speechkit/Prompt;
    .locals 0
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/SpeechKitInternal;
    .param p1, "x1"    # Lcom/nuance/nmdp/speechkit/Prompt;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_defaultStartPrompt:Lcom/nuance/nmdp/speechkit/Prompt;

    return-object p1
.end method

.method static final checkArgForNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .param p0, "arg"    # Ljava/lang/Object;
    .param p1, "argName"    # Ljava/lang/String;

    .prologue
    .line 215
    if-nez p0, :cond_0

    .line 216
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must not be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->throwException(Ljava/lang/RuntimeException;)V

    .line 217
    :cond_0
    return-void
.end method

.method static final checkStringArgForNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "arg"    # Ljava/lang/String;
    .param p1, "argName"    # Ljava/lang/String;

    .prologue
    .line 226
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 227
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must not be null or empty"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->throwException(Ljava/lang/RuntimeException;)V

    .line 228
    :cond_1
    return-void
.end method

.method private dispose()V
    .locals 1

    .prologue
    .line 262
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_isValid:Z

    .line 264
    new-instance v0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal$2;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal$2;-><init>(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;)V

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/util/JobRunner;->addJob(Ljava/lang/Runnable;)V

    .line 278
    return-void
.end method

.method static getSync()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_sync:Ljava/lang/Object;

    return-object v0
.end method

.method public static initialize(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z[BLcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;)Lcom/nuance/nmdp/speechkit/SpeechKitInternal;
    .locals 12
    .param p0, "appContext"    # Ljava/lang/Object;
    .param p1, "appVersion"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "subscriptionId"    # Ljava/lang/String;
    .param p6, "useSsl"    # Z
    .param p7, "applicationKey"    # [B
    .param p8, "type"    # Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;

    .prologue
    .line 58
    const-string v1, "appContext"

    invoke-static {p0, v1}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->checkArgForNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    const-string v1, "id"

    invoke-static {p2, v1}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->checkArgForNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    const-string v1, "host"

    invoke-static {p3, v1}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->checkStringArgForNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v1, "appVersion"

    invoke-static {p1, v1}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->checkArgForNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    const-string v1, "applicationKey"

    move-object/from16 v0, p7

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->checkArgForNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    if-ltz p4, :cond_0

    const v1, 0xffff

    move/from16 v0, p4

    if-le v0, v1, :cond_1

    .line 64
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "port must be between 0 and 65535"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->throwException(Ljava/lang/RuntimeException;)V

    .line 65
    :cond_1
    const-string v1, "type"

    invoke-static {p0, v1}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->checkArgForNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    sget-object v11, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_sync:Ljava/lang/Object;

    monitor-enter v11

    .line 69
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "Initializing SpeechKit"

    invoke-static {v1, v2}, Lcom/nuance/nmdp/speechkit/util/Logger;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    sget-object v1, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_instance:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    if-nez v1, :cond_2

    .line 72
    invoke-static {}, Lcom/nuance/nmdp/speechkit/util/JobRunner;->initialize()V

    .line 75
    :cond_2
    sget-object v1, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_instance:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_instance:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    move/from16 v0, p4

    invoke-direct {v1, p2, p3, v0}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->isCurrent(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 77
    const/4 v1, 0x0

    const-string v2, "Releasing old SpeechKit before creating new instance"

    invoke-static {v1, v2}, Lcom/nuance/nmdp/speechkit/util/Logger;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    sget-object v1, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_instance:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    invoke-direct {v1}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->dispose()V

    .line 79
    const/4 v1, 0x0

    sput-object v1, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_instance:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    .line 82
    :cond_3
    sget-object v1, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_instance:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    if-nez v1, :cond_4

    .line 84
    const/4 v1, 0x0

    const-string v2, "Creating fresh SpeechKit instance"

    invoke-static {v1, v2}, Lcom/nuance/nmdp/speechkit/util/Logger;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    new-instance v1, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z[BLcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;)V

    sput-object v1, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_instance:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    .line 87
    :cond_4
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    sget-object v1, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_instance:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    return-object v1

    .line 87
    :catchall_0
    move-exception v1

    monitor-exit v11

    throw v1
.end method

.method private isCurrent(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I

    .prologue
    .line 257
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_id:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_host:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_port:I

    if-ne v0, p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setupRecognizerPrompts(Lcom/nuance/nmdp/speechkit/IRecognizer;ZZ)V
    .locals 2
    .param p1, "recognizer"    # Lcom/nuance/nmdp/speechkit/IRecognizer;
    .param p2, "recorderPrompts"    # Z
    .param p3, "resultPrompts"    # Z

    .prologue
    .line 346
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_defaultStartPrompt:Lcom/nuance/nmdp/speechkit/Prompt;

    if-eqz v0, :cond_0

    .line 347
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_defaultStartPrompt:Lcom/nuance/nmdp/speechkit/Prompt;

    invoke-interface {p1, v0, v1}, Lcom/nuance/nmdp/speechkit/IRecognizer;->setPrompt(ILcom/nuance/nmdp/speechkit/Prompt;)V

    .line 348
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_defaultEndPrompt:Lcom/nuance/nmdp/speechkit/Prompt;

    if-eqz v0, :cond_1

    .line 349
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_defaultEndPrompt:Lcom/nuance/nmdp/speechkit/Prompt;

    invoke-interface {p1, v0, v1}, Lcom/nuance/nmdp/speechkit/IRecognizer;->setPrompt(ILcom/nuance/nmdp/speechkit/Prompt;)V

    .line 350
    :cond_1
    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_defaultResultPrompt:Lcom/nuance/nmdp/speechkit/Prompt;

    if-eqz v0, :cond_2

    .line 351
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_defaultResultPrompt:Lcom/nuance/nmdp/speechkit/Prompt;

    invoke-interface {p1, v0, v1}, Lcom/nuance/nmdp/speechkit/IRecognizer;->setPrompt(ILcom/nuance/nmdp/speechkit/Prompt;)V

    .line 352
    :cond_2
    if-eqz p3, :cond_3

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_defaultErrorPrompt:Lcom/nuance/nmdp/speechkit/Prompt;

    if-eqz v0, :cond_3

    .line 353
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_defaultErrorPrompt:Lcom/nuance/nmdp/speechkit/Prompt;

    invoke-interface {p1, v0, v1}, Lcom/nuance/nmdp/speechkit/IRecognizer;->setPrompt(ILcom/nuance/nmdp/speechkit/Prompt;)V

    .line 354
    :cond_3
    return-void
.end method

.method static final throwException(Ljava/lang/RuntimeException;)V
    .locals 2
    .param p0, "ex"    # Ljava/lang/RuntimeException;

    .prologue
    .line 251
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    throw p0
.end method

.method static final throwInvalidException()V
    .locals 2

    .prologue
    .line 246
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SpeechKit instance is released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->throwException(Ljava/lang/RuntimeException;)V

    .line 247
    return-void
.end method


# virtual methods
.method public final cancelCurrent()V
    .locals 2

    .prologue
    .line 961
    sget-object v1, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_sync:Ljava/lang/Object;

    monitor-enter v1

    .line 963
    :try_start_0
    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_isValid:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->throwInvalidException()V

    .line 964
    :cond_0
    new-instance v0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal$7;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal$7;-><init>(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;)V

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/util/JobRunner;->addJob(Ljava/lang/Runnable;)V

    .line 971
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method final checkForInvalid()V
    .locals 2

    .prologue
    .line 235
    sget-object v1, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_sync:Ljava/lang/Object;

    monitor-enter v1

    .line 237
    :try_start_0
    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_isValid:Z

    if-nez v0, :cond_0

    .line 239
    invoke-static {}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->throwInvalidException()V

    .line 241
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final connect()V
    .locals 2

    .prologue
    .line 317
    sget-object v1, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_sync:Ljava/lang/Object;

    monitor-enter v1

    .line 319
    :try_start_0
    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_isValid:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->throwInvalidException()V

    .line 321
    :cond_0
    new-instance v0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal$4;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal$4;-><init>(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;)V

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/util/JobRunner;->addJob(Ljava/lang/Runnable;)V

    .line 341
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final createConstraintRecognizer(Ljava/lang/String;ILcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;Ljava/lang/String;Ljava/util/Vector;Lcom/nuance/nmdp/speechkit/Recognizer$Listener;Ljava/lang/Object;)Lcom/nuance/nmdp/speechkit/Recognizer;
    .locals 13
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
    .line 512
    .local p5, "grammarList":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/nuance/nmdp/speechkit/util/grammar/Grammar;>;"
    const-string v2, "type"

    invoke-static {p1, v2}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->checkArgForNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 513
    const-string v2, "language"

    move-object/from16 v0, p4

    invoke-static {v0, v2}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->checkArgForNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 514
    const-string v2, "listener"

    move-object/from16 v0, p6

    invoke-static {v0, v2}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->checkArgForNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 515
    const-string v2, "grammarList"

    move-object/from16 v0, p5

    invoke-static {v0, v2}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->checkArgForNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 517
    sget-object v12, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_sync:Ljava/lang/Object;

    monitor-enter v12

    .line 519
    :try_start_0
    iget-boolean v2, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_isValid:Z

    if-nez v2, :cond_0

    invoke-static {}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->throwInvalidException()V

    .line 520
    :cond_0
    const/4 v7, 0x0

    .line 521
    .local v7, "grammarSeq":Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;
    if-eqz p5, :cond_1

    .line 522
    new-instance v7, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;

    .end local v7    # "grammarSeq":Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;
    invoke-direct {v7}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;-><init>()V

    .line 523
    .restart local v7    # "grammarSeq":Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;
    invoke-virtual/range {p5 .. p5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar;

    .line 524
    .local v10, "grammar":Lcom/nuance/nmdp/speechkit/util/grammar/Grammar;
    invoke-virtual {v10}, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar;->getGrammarDictionary()Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;->add(Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 531
    .end local v7    # "grammarSeq":Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;
    .end local v10    # "grammar":Lcom/nuance/nmdp/speechkit/util/grammar/Grammar;
    .end local v11    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v12

    throw v2

    .line 527
    .restart local v7    # "grammarSeq":Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;
    :cond_1
    :try_start_1
    new-instance v1, Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy;-><init>(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;Ljava/lang/String;ILcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;Lcom/nuance/nmdp/speechkit/Recognizer$Listener;Ljava/lang/Object;)V

    .line 528
    .local v1, "recognizer":Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy;
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->setupRecognizerPrompts(Lcom/nuance/nmdp/speechkit/IRecognizer;ZZ)V

    .line 530
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1
.end method

.method public final createConstraintRecognizer(Ljava/lang/String;ILjava/lang/String;Ljava/util/Vector;Lcom/nuance/nmdp/speechkit/Recognizer$Listener;Ljava/lang/Object;)Lcom/nuance/nmdp/speechkit/Recognizer;
    .locals 13
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
    .line 460
    .local p4, "grammarList":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/nuance/nmdp/speechkit/util/grammar/Grammar;>;"
    const-string v2, "type"

    invoke-static {p1, v2}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->checkArgForNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 461
    const-string v2, "language"

    move-object/from16 v0, p3

    invoke-static {v0, v2}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->checkArgForNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 462
    const-string v2, "listener"

    move-object/from16 v0, p5

    invoke-static {v0, v2}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->checkArgForNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 463
    const-string v2, "grammarList"

    move-object/from16 v0, p4

    invoke-static {v0, v2}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->checkArgForNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 465
    sget-object v12, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_sync:Ljava/lang/Object;

    monitor-enter v12

    .line 467
    :try_start_0
    iget-boolean v2, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_isValid:Z

    if-nez v2, :cond_0

    invoke-static {}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->throwInvalidException()V

    .line 468
    :cond_0
    const/4 v7, 0x0

    .line 469
    .local v7, "grammarSeq":Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;
    if-eqz p4, :cond_1

    .line 470
    new-instance v7, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;

    .end local v7    # "grammarSeq":Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;
    invoke-direct {v7}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;-><init>()V

    .line 471
    .restart local v7    # "grammarSeq":Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;
    invoke-virtual/range {p4 .. p4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar;

    .line 472
    .local v10, "grammar":Lcom/nuance/nmdp/speechkit/util/grammar/Grammar;
    invoke-virtual {v10}, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar;->getGrammarDictionary()Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;->add(Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 479
    .end local v7    # "grammarSeq":Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;
    .end local v10    # "grammar":Lcom/nuance/nmdp/speechkit/util/grammar/Grammar;
    .end local v11    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v12

    throw v2

    .line 475
    .restart local v7    # "grammarSeq":Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;
    :cond_1
    :try_start_1
    new-instance v1, Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy;

    sget-object v5, Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;->NO_PARTIAL_RESULTS:Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object/from16 v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy;-><init>(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;Ljava/lang/String;ILcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;Lcom/nuance/nmdp/speechkit/Recognizer$Listener;Ljava/lang/Object;)V

    .line 476
    .local v1, "recognizer":Lcom/nuance/nmdp/speechkit/ConstraintRecognizerProxy;
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->setupRecognizerPrompts(Lcom/nuance/nmdp/speechkit/IRecognizer;ZZ)V

    .line 478
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1
.end method

.method public final createCustomWordsSynchronizer(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer$Listener;Landroid/os/Handler;)Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer;
    .locals 7
    .param p1, "dictationType"    # Ljava/lang/String;
    .param p2, "language"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer$Listener;
    .param p4, "callbackHandler"    # Landroid/os/Handler;

    .prologue
    .line 1108
    const-string v0, "listener"

    invoke-static {p3, v0}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->checkArgForNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1110
    sget-object v6, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_sync:Ljava/lang/Object;

    monitor-enter v6

    .line 1112
    :try_start_0
    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_isValid:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->throwInvalidException()V

    .line 1113
    :cond_0
    new-instance v0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;-><init>(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer$Listener;Ljava/lang/Object;)V

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 1114
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public final createDataUploadCmd(Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;IILcom/nuance/nmdp/speechkit/DataUploadCommand$Listener;Ljava/lang/Object;)Lcom/nuance/nmdp/speechkit/DataUploadCommand;
    .locals 4
    .param p1, "datablock"    # Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;
    .param p2, "currentChecksum"    # I
    .param p3, "newChecksum"    # I
    .param p4, "listener"    # Lcom/nuance/nmdp/speechkit/DataUploadCommand$Listener;
    .param p5, "callbackHandler"    # Ljava/lang/Object;

    .prologue
    .line 725
    const-string v1, "datablock"

    invoke-static {p1, v1}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->checkArgForNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 726
    const-string v1, "listener"

    invoke-static {p4, v1}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->checkArgForNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 728
    sget-object v2, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_sync:Ljava/lang/Object;

    monitor-enter v2

    .line 730
    :try_start_0
    iget-boolean v1, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_isValid:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->throwInvalidException()V

    .line 732
    :cond_0
    new-instance v0, Lcom/nuance/nmdp/speechkit/DataUploadProxy;

    invoke-direct {v0, p0, p4, p5}, Lcom/nuance/nmdp/speechkit/DataUploadProxy;-><init>(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;Lcom/nuance/nmdp/speechkit/DataUploadCommand$Listener;Ljava/lang/Object;)V

    .line 733
    .local v0, "command":Lcom/nuance/nmdp/speechkit/DataUploadProxy;
    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_genericCommand:Lcom/nuance/nmdp/speechkit/CommandProxyBase;

    .line 734
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_datablock:Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;

    .line 735
    iput p2, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_currentChecksum:I

    .line 736
    iput p3, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_newChecksum:I

    .line 738
    new-instance v1, Lcom/nuance/nmdp/speechkit/SpeechKitInternal$5;

    invoke-direct {v1, p0}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal$5;-><init>(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;)V

    invoke-static {v1}, Lcom/nuance/nmdp/speechkit/util/JobRunner;->addJob(Ljava/lang/Runnable;)V

    .line 773
    sget-object v3, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_syncUpload:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 774
    :goto_0
    :try_start_1
    iget-boolean v1, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_isCommandInit:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    .line 776
    :try_start_2
    sget-object v1, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_syncUpload:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 778
    :catch_0
    move-exception v1

    goto :goto_0

    .line 780
    :cond_1
    :try_start_3
    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/DataUploadProxy;->setReady()V

    .line 781
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 782
    :try_start_4
    monitor-exit v2

    return-object v0

    .line 781
    :catchall_0
    move-exception v1

    monitor-exit v3

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 783
    .end local v0    # "command":Lcom/nuance/nmdp/speechkit/DataUploadProxy;
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public final createLanguageRequest(Lcom/nuance/nmdp/speechkit/LanguageTableRequest$Listener;Ljava/lang/Object;)Lcom/nuance/nmdp/speechkit/LanguageTableRequest;
    .locals 5
    .param p1, "listener"    # Lcom/nuance/nmdp/speechkit/LanguageTableRequest$Listener;
    .param p2, "callbackHandler"    # Ljava/lang/Object;

    .prologue
    .line 802
    const-string v1, "listener"

    invoke-static {p1, v1}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->checkArgForNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 804
    sget-object v2, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_sync:Ljava/lang/Object;

    monitor-enter v2

    .line 806
    :try_start_0
    iget-boolean v1, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_isValid:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->throwInvalidException()V

    .line 808
    :cond_0
    new-instance v0, Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;

    invoke-direct {v0, p0, p1, p2}, Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;-><init>(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;Lcom/nuance/nmdp/speechkit/LanguageTableRequest$Listener;Ljava/lang/Object;)V

    .line 810
    .local v0, "request":Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;
    const-string v1, "TRANSFER_ID"

    new-instance v3, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$String;

    const-string v4, "1234567890"

    invoke-direct {v3, v4}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v3}, Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;->addParam(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$String;)V

    .line 814
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 815
    .end local v0    # "request":Lcom/nuance/nmdp/speechkit/LanguageTableRequestProxy;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public final createLogRevisionCmd(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/GenericCommand$Listener;Ljava/lang/Object;)Lcom/nuance/nmdp/speechkit/GenericCommand;
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "content"    # Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;
    .param p3, "appSessionId"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/nuance/nmdp/speechkit/GenericCommand$Listener;
    .param p5, "callbackHandler"    # Ljava/lang/Object;

    .prologue
    .line 670
    const-string v2, "event"

    invoke-static {p1, v2}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->checkArgForNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 671
    const-string v2, "content"

    invoke-static {p2, v2}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->checkArgForNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 672
    const-string v2, "listener"

    invoke-static {p4, v2}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->checkArgForNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 674
    sget-object v3, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_sync:Ljava/lang/Object;

    monitor-enter v3

    .line 676
    :try_start_0
    iget-boolean v2, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_isValid:Z

    if-nez v2, :cond_0

    invoke-static {}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->throwInvalidException()V

    .line 678
    :cond_0
    new-instance v0, Lcom/nuance/nmdp/speechkit/LogRevisionProxy;

    invoke-direct {v0, p0, p3, p4, p5}, Lcom/nuance/nmdp/speechkit/LogRevisionProxy;-><init>(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/GenericCommand$Listener;Ljava/lang/Object;)V

    .line 681
    .local v0, "command":Lcom/nuance/nmdp/speechkit/LogRevisionProxy;
    new-instance v1, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;

    invoke-direct {v1}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;-><init>()V

    .line 682
    .local v1, "logDict":Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;
    const-string v2, "event"

    invoke-virtual {v1, v2, p1}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    const-string v2, "content"

    invoke-virtual {v1, v2, p2}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;)V

    .line 685
    const-string v2, "LOG_CONTENT"

    invoke-virtual {v0, v2, v1}, Lcom/nuance/nmdp/speechkit/LogRevisionProxy;->addParam(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;)V

    .line 689
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 690
    .end local v0    # "command":Lcom/nuance/nmdp/speechkit/LogRevisionProxy;
    .end local v1    # "logDict":Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public final createNluRecognizer(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;Lcom/nuance/nmdp/speechkit/NluRecognizer$Listener;Ljava/lang/Object;)Lcom/nuance/nmdp/speechkit/NluRecognizer;
    .locals 11
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "detection"    # I
    .param p3, "language"    # Ljava/lang/String;
    .param p4, "appSessionId"    # Ljava/lang/String;
    .param p5, "requestParams"    # Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;
    .param p6, "listener"    # Lcom/nuance/nmdp/speechkit/NluRecognizer$Listener;
    .param p7, "callbackHandler"    # Ljava/lang/Object;

    .prologue
    .line 566
    const-string v2, "type"

    invoke-static {p1, v2}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->checkArgForNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 567
    const-string v2, "language"

    invoke-static {p3, v2}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->checkArgForNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 568
    const-string v2, "listener"

    move-object/from16 v0, p6

    invoke-static {v0, v2}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->checkArgForNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 569
    const-string v2, "requestParams"

    move-object/from16 v0, p5

    invoke-static {v0, v2}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->checkArgForNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 571
    sget-object v10, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_sync:Ljava/lang/Object;

    monitor-enter v10

    .line 573
    :try_start_0
    iget-boolean v2, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_isValid:Z

    if-nez v2, :cond_0

    invoke-static {}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->throwInvalidException()V

    .line 574
    :cond_0
    new-instance v1, Lcom/nuance/nmdp/speechkit/NluRecognizerProxy;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/nuance/nmdp/speechkit/NluRecognizerProxy;-><init>(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;Lcom/nuance/nmdp/speechkit/NluRecognizer$Listener;Ljava/lang/Object;)V

    .line 575
    .local v1, "recognizer":Lcom/nuance/nmdp/speechkit/NluRecognizerProxy;
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->setupRecognizerPrompts(Lcom/nuance/nmdp/speechkit/IRecognizer;ZZ)V

    .line 576
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 577
    .end local v1    # "recognizer":Lcom/nuance/nmdp/speechkit/NluRecognizerProxy;
    :catchall_0
    move-exception v2

    monitor-exit v10

    throw v2
.end method

.method public final createRecognizer(Ljava/lang/String;ILcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/Recognizer$Listener;Ljava/lang/Object;)Lcom/nuance/nmdp/speechkit/Recognizer;
    .locals 9
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "detection"    # I
    .param p3, "partialResultsMode"    # Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;
    .param p4, "language"    # Ljava/lang/String;
    .param p5, "listener"    # Lcom/nuance/nmdp/speechkit/Recognizer$Listener;
    .param p6, "callbackHandler"    # Ljava/lang/Object;

    .prologue
    .line 417
    const-string v1, "type"

    invoke-static {p1, v1}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->checkArgForNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 418
    const-string v1, "language"

    invoke-static {p4, v1}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->checkArgForNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 419
    const-string v1, "listener"

    invoke-static {p5, v1}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->checkArgForNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 421
    sget-object v8, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_sync:Ljava/lang/Object;

    monitor-enter v8

    .line 423
    :try_start_0
    iget-boolean v1, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_isValid:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->throwInvalidException()V

    .line 424
    :cond_0
    new-instance v0, Lcom/nuance/nmdp/speechkit/RecognizerProxy;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/nuance/nmdp/speechkit/RecognizerProxy;-><init>(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;Ljava/lang/String;ILcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/Recognizer$Listener;Ljava/lang/Object;)V

    .line 425
    .local v0, "recognizer":Lcom/nuance/nmdp/speechkit/RecognizerProxy;
    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->setupRecognizerPrompts(Lcom/nuance/nmdp/speechkit/IRecognizer;ZZ)V

    .line 427
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 428
    .end local v0    # "recognizer":Lcom/nuance/nmdp/speechkit/RecognizerProxy;
    :catchall_0
    move-exception v1

    monitor-exit v8

    throw v1
.end method

.method public final createRecognizer(Ljava/lang/String;ILjava/lang/String;Lcom/nuance/nmdp/speechkit/Recognizer$Listener;Ljava/lang/Object;)Lcom/nuance/nmdp/speechkit/Recognizer;
    .locals 9
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "detection"    # I
    .param p3, "language"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/nuance/nmdp/speechkit/Recognizer$Listener;
    .param p5, "callbackHandler"    # Ljava/lang/Object;

    .prologue
    .line 379
    const-string v1, "type"

    invoke-static {p1, v1}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->checkArgForNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 380
    const-string v1, "language"

    invoke-static {p3, v1}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->checkArgForNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 381
    const-string v1, "listener"

    invoke-static {p4, v1}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->checkArgForNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 383
    sget-object v8, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_sync:Ljava/lang/Object;

    monitor-enter v8

    .line 385
    :try_start_0
    iget-boolean v1, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_isValid:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->throwInvalidException()V

    .line 386
    :cond_0
    new-instance v0, Lcom/nuance/nmdp/speechkit/RecognizerProxy;

    sget-object v4, Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;->NO_PARTIAL_RESULTS:Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/nuance/nmdp/speechkit/RecognizerProxy;-><init>(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;Ljava/lang/String;ILcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/Recognizer$Listener;Ljava/lang/Object;)V

    .line 387
    .local v0, "recognizer":Lcom/nuance/nmdp/speechkit/RecognizerProxy;
    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->setupRecognizerPrompts(Lcom/nuance/nmdp/speechkit/IRecognizer;ZZ)V

    .line 389
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 390
    .end local v0    # "recognizer":Lcom/nuance/nmdp/speechkit/RecognizerProxy;
    :catchall_0
    move-exception v1

    monitor-exit v8

    throw v1
.end method

.method public final createResetUserProfileCmd(Lcom/nuance/nmdp/speechkit/GenericCommand$Listener;Ljava/lang/Object;)Lcom/nuance/nmdp/speechkit/GenericCommand;
    .locals 2
    .param p1, "listener"    # Lcom/nuance/nmdp/speechkit/GenericCommand$Listener;
    .param p2, "callbackHandler"    # Ljava/lang/Object;

    .prologue
    .line 634
    const-string v0, "listener"

    invoke-static {p1, v0}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->checkArgForNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 636
    sget-object v1, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_sync:Ljava/lang/Object;

    monitor-enter v1

    .line 638
    :try_start_0
    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_isValid:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->throwInvalidException()V

    .line 640
    :cond_0
    new-instance v0, Lcom/nuance/nmdp/speechkit/ResetUserProfileProxy;

    invoke-direct {v0, p0, p1, p2}, Lcom/nuance/nmdp/speechkit/ResetUserProfileProxy;-><init>(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;Lcom/nuance/nmdp/speechkit/GenericCommand$Listener;Ljava/lang/Object;)V

    .line 644
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 645
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final createTextContextRecognizer(Ljava/lang/String;ILcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/TextContext;Lcom/nuance/nmdp/speechkit/Recognizer$Listener;Ljava/lang/Object;)Lcom/nuance/nmdp/speechkit/Recognizer;
    .locals 11
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "detection"    # I
    .param p3, "partialResultsMode"    # Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;
    .param p4, "language"    # Ljava/lang/String;
    .param p5, "textContext"    # Lcom/nuance/nmdp/speechkit/TextContext;
    .param p6, "listener"    # Lcom/nuance/nmdp/speechkit/Recognizer$Listener;
    .param p7, "callbackHandler"    # Ljava/lang/Object;

    .prologue
    .line 1074
    const-string v2, "type"

    invoke-static {p1, v2}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->checkArgForNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1075
    const-string v2, "language"

    invoke-static {p4, v2}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->checkArgForNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1076
    const-string v2, "listener"

    move-object/from16 v0, p6

    invoke-static {v0, v2}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->checkArgForNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1078
    sget-object v10, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_sync:Ljava/lang/Object;

    monitor-enter v10

    .line 1080
    :try_start_0
    iget-boolean v2, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_isValid:Z

    if-nez v2, :cond_0

    invoke-static {}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->throwInvalidException()V

    .line 1081
    :cond_0
    new-instance v1, Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy;-><init>(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;Ljava/lang/String;ILcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/TextContext;Lcom/nuance/nmdp/speechkit/Recognizer$Listener;Ljava/lang/Object;)V

    .line 1083
    .local v1, "recognizer":Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy;
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->setupRecognizerPrompts(Lcom/nuance/nmdp/speechkit/IRecognizer;ZZ)V

    .line 1084
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 1085
    .end local v1    # "recognizer":Lcom/nuance/nmdp/speechkit/TextContextRecognizerProxy;
    :catchall_0
    move-exception v2

    monitor-exit v10

    throw v2
.end method

.method public final createTextRecognizer(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;Lcom/nuance/nmdp/speechkit/TextRecognizer$Listener;Ljava/lang/Object;)Lcom/nuance/nmdp/speechkit/TextRecognizer;
    .locals 9
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "appSessionId"    # Ljava/lang/String;
    .param p3, "requestParams"    # Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;
    .param p4, "listener"    # Lcom/nuance/nmdp/speechkit/TextRecognizer$Listener;
    .param p5, "callbackHandler"    # Ljava/lang/Object;

    .prologue
    .line 606
    const-string v0, "language"

    invoke-static {p1, v0}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->checkArgForNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 607
    const-string v0, "listener"

    invoke-static {p4, v0}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->checkArgForNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 608
    const-string v0, "requestParams"

    invoke-static {p3, v0}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->checkArgForNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 610
    sget-object v8, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_sync:Ljava/lang/Object;

    monitor-enter v8

    .line 612
    :try_start_0
    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_isValid:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->throwInvalidException()V

    .line 613
    :cond_0
    new-instance v0, Lcom/nuance/nmdp/speechkit/TextRecognizerProxy;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/nuance/nmdp/speechkit/TextRecognizerProxy;-><init>(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;Ljava/util/List;Lcom/nuance/nmdp/speechkit/TextRecognizer$Listener;Ljava/lang/Object;)V

    .line 614
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 615
    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method public final createVocalizerWithLanguage(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;Ljava/lang/Object;)Lcom/nuance/nmdp/speechkit/Vocalizer;
    .locals 7
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;
    .param p3, "callbackHandler"    # Ljava/lang/Object;

    .prologue
    .line 836
    const-string v0, "language"

    invoke-static {p1, v0}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->checkArgForNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 837
    const-string v0, "listener"

    invoke-static {p2, v0}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->checkArgForNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 839
    sget-object v6, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_sync:Ljava/lang/Object;

    monitor-enter v6

    .line 841
    :try_start_0
    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_isValid:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->throwInvalidException()V

    .line 842
    :cond_0
    new-instance v0, Lcom/nuance/nmdp/speechkit/VocalizerProxy;

    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/nuance/nmdp/speechkit/VocalizerProxy;-><init>(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;Ljava/lang/Object;)V

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 843
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public final createVocalizerWithVoice(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;Ljava/lang/Object;)Lcom/nuance/nmdp/speechkit/Vocalizer;
    .locals 7
    .param p1, "voice"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;
    .param p3, "callbackHandler"    # Ljava/lang/Object;

    .prologue
    .line 862
    const-string v0, "voice"

    invoke-static {p1, v0}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->checkArgForNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 863
    const-string v0, "listener"

    invoke-static {p2, v0}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->checkArgForNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 865
    sget-object v6, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_sync:Ljava/lang/Object;

    monitor-enter v6

    .line 867
    :try_start_0
    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_isValid:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->throwInvalidException()V

    .line 868
    :cond_0
    new-instance v0, Lcom/nuance/nmdp/speechkit/VocalizerProxy;

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/nuance/nmdp/speechkit/VocalizerProxy;-><init>(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;Ljava/lang/Object;)V

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 869
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public final definePrompt(Lcom/nuance/nmdp/speechkit/Prompt;)V
    .locals 2
    .param p1, "prompt"    # Lcom/nuance/nmdp/speechkit/Prompt;

    .prologue
    .line 891
    sget-object v1, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_sync:Ljava/lang/Object;

    monitor-enter v1

    .line 893
    :try_start_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_prompts:Lcom/nuance/nmdp/speechkit/util/List;

    invoke-virtual {v0, p1}, Lcom/nuance/nmdp/speechkit/util/List;->add(Ljava/lang/Object;)V

    .line 894
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method final deletePrompt(Lcom/nuance/nmdp/speechkit/Prompt;)V
    .locals 2
    .param p1, "p"    # Lcom/nuance/nmdp/speechkit/Prompt;

    .prologue
    const/4 v1, 0x0

    .line 192
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_prompts:Lcom/nuance/nmdp/speechkit/util/List;

    invoke-virtual {v0, p1}, Lcom/nuance/nmdp/speechkit/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_prompts:Lcom/nuance/nmdp/speechkit/util/List;

    invoke-virtual {v0, p1}, Lcom/nuance/nmdp/speechkit/util/List;->remove(Ljava/lang/Object;)V

    .line 196
    :cond_0
    invoke-virtual {p1}, Lcom/nuance/nmdp/speechkit/Prompt;->getPrompt()Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;->dispose()V

    .line 198
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_defaultStartPrompt:Lcom/nuance/nmdp/speechkit/Prompt;

    if-ne p1, v0, :cond_1

    .line 199
    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_defaultStartPrompt:Lcom/nuance/nmdp/speechkit/Prompt;

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_defaultEndPrompt:Lcom/nuance/nmdp/speechkit/Prompt;

    if-ne p1, v0, :cond_2

    .line 201
    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_defaultEndPrompt:Lcom/nuance/nmdp/speechkit/Prompt;

    .line 202
    :cond_2
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_defaultResultPrompt:Lcom/nuance/nmdp/speechkit/Prompt;

    if-ne p1, v0, :cond_3

    .line 203
    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_defaultResultPrompt:Lcom/nuance/nmdp/speechkit/Prompt;

    .line 204
    :cond_3
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_defaultErrorPrompt:Lcom/nuance/nmdp/speechkit/Prompt;

    if-ne p1, v0, :cond_4

    .line 205
    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_defaultErrorPrompt:Lcom/nuance/nmdp/speechkit/Prompt;

    .line 206
    :cond_4
    return-void
.end method

.method public final getAppserverCmd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_config:Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->getAppserverCmd()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getAsrCmd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 979
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_config:Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->getAsrCmd()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCmdSetType()Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;
    .locals 1

    .prologue
    .line 1063
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_config:Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->getCmdSetType()Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;

    move-result-object v0

    return-object v0
.end method

.method public final getDataUploadCmd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 991
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_config:Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->getDataUploadCmd()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getLanguageCmd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_config:Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->getLanguageCmd()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getLogRevisionCmd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_config:Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->getLogRevisionCmd()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getResetUerProfileCmd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_config:Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->getResetUerProfileCmd()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final getRunner()Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_transactionRunner:Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;

    return-object v0
.end method

.method public final getSessionId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 880
    sget-object v1, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_sync:Ljava/lang/Object;

    monitor-enter v1

    .line 882
    :try_start_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_transactionRunner:Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;

    if-eqz v0, :cond_0

    .line 883
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_transactionRunner:Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->getSessionId()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 885
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 886
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final getTtsCmd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_config:Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->getTtsCmd()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final getWrapper()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_speechKitWrapper:Ljava/lang/Object;

    return-object v0
.end method

.method final isValid()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_isValid:Z

    return v0
.end method

.method public final release()V
    .locals 2

    .prologue
    .line 286
    sget-object v1, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_sync:Ljava/lang/Object;

    monitor-enter v1

    .line 288
    :try_start_0
    sget-object v0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_instance:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    if-ne p0, v0, :cond_0

    .line 290
    const-string v0, "Releasing SpeechKit instance"

    invoke-static {p0, v0}, Lcom/nuance/nmdp/speechkit/util/Logger;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->dispose()V

    .line 292
    const/4 v0, 0x0

    sput-object v0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_instance:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    .line 298
    new-instance v0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal$3;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal$3;-><init>(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;)V

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/util/JobRunner;->addJob(Ljava/lang/Runnable;)V

    .line 309
    :goto_0
    monitor-exit v1

    return-void

    .line 307
    :cond_0
    const-string v0, "SpeechKit instance already released"

    invoke-static {p0, v0}, Lcom/nuance/nmdp/speechkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 309
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method final setAppserverCmd(Ljava/lang/String;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_config:Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;

    invoke-virtual {v0, p1}, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->setAppserverCmd(Ljava/lang/String;)V

    .line 1032
    return-void
.end method

.method final setAsrCmd(Ljava/lang/String;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 983
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_config:Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;

    invoke-virtual {v0, p1}, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->setAsrCmd(Ljava/lang/String;)V

    .line 984
    return-void
.end method

.method public final setCmdSetType(Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;)V
    .locals 1
    .param p1, "type"    # Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_config:Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;

    invoke-virtual {v0, p1}, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->setCmdSetType(Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;)V

    .line 1060
    return-void
.end method

.method final setDataUploadCmd(Ljava/lang/String;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 995
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_config:Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;

    invoke-virtual {v0, p1}, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->setDataUploadCmd(Ljava/lang/String;)V

    .line 996
    return-void
.end method

.method public final setDefaultRecognizerPrompts(Lcom/nuance/nmdp/speechkit/Prompt;Lcom/nuance/nmdp/speechkit/Prompt;Lcom/nuance/nmdp/speechkit/Prompt;Lcom/nuance/nmdp/speechkit/Prompt;)V
    .locals 6
    .param p1, "recordingStart"    # Lcom/nuance/nmdp/speechkit/Prompt;
    .param p2, "recordingStop"    # Lcom/nuance/nmdp/speechkit/Prompt;
    .param p3, "result"    # Lcom/nuance/nmdp/speechkit/Prompt;
    .param p4, "error"    # Lcom/nuance/nmdp/speechkit/Prompt;

    .prologue
    .line 910
    sget-object v1, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_sync:Ljava/lang/Object;

    monitor-enter v1

    .line 912
    :try_start_0
    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_isValid:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->throwInvalidException()V

    .line 913
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 915
    new-instance v0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal$6;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal$6;-><init>(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;Lcom/nuance/nmdp/speechkit/Prompt;Lcom/nuance/nmdp/speechkit/Prompt;Lcom/nuance/nmdp/speechkit/Prompt;Lcom/nuance/nmdp/speechkit/Prompt;)V

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/util/JobRunner;->addJob(Ljava/lang/Runnable;)V

    .line 953
    return-void

    .line 913
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method final setLanguageCmd(Ljava/lang/String;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_config:Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;

    invoke-virtual {v0, p1}, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->setLanguageCmd(Ljava/lang/String;)V

    .line 1044
    return-void
.end method

.method final setLogRevisionCmd(Ljava/lang/String;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_config:Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;

    invoke-virtual {v0, p1}, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->setLogRevisionCmd(Ljava/lang/String;)V

    .line 1008
    return-void
.end method

.method final setResetUerProfileCmd(Ljava/lang/String;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_config:Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;

    invoke-virtual {v0, p1}, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->setResetUerProfileCmd(Ljava/lang/String;)V

    .line 1020
    return-void
.end method

.method final setTtsCmd(Ljava/lang/String;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 1055
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_config:Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;

    invoke-virtual {v0, p1}, Lcom/nuance/nmdp/speechkit/transaction/TransactionConfig;->setTtsCmd(Ljava/lang/String;)V

    .line 1056
    return-void
.end method

.method final setWrapper(Ljava/lang/Object;)V
    .locals 0
    .param p1, "speechKitWrapper"    # Ljava/lang/Object;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->_speechKitWrapper:Ljava/lang/Object;

    .line 170
    return-void
.end method
