.class final Lcom/crashlytics/android/CLSUUID;
.super Ljava/lang/Object;
.source "CLSUUID.java"


# static fields
.field private static _clsId:Ljava/lang/String;

.field private static final _sequenceNumber:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/crashlytics/android/CLSUUID;->_sequenceNumber:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Lio/fabric/sdk/android/services/common/IdManager;)V
    .registers 12
    .param p1, "idManager"    # Lio/fabric/sdk/android/services/common/IdManager;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/16 v3, 0xa

    new-array v0, v3, [B

    .line 1050
    .local v0, "bytes":[B
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 1051
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 1052
    const-wide/16 v6, 0x3e8

    div-long v6, v4, v6

    .line 1053
    const-wide/16 v8, 0x3e8

    rem-long/2addr v4, v8

    .line 1079
    const/4 v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 1080
    long-to-int v6, v6

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1081
    sget-object v6, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1082
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1084
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 1055
    const/4 v6, 0x0

    const/4 v7, 0x0

    aget-byte v7, v3, v7

    aput-byte v7, v0, v6

    .line 1056
    const/4 v6, 0x1

    const/4 v7, 0x1

    aget-byte v7, v3, v7

    aput-byte v7, v0, v6

    .line 1057
    const/4 v6, 0x2

    const/4 v7, 0x2

    aget-byte v7, v3, v7

    aput-byte v7, v0, v6

    .line 1058
    const/4 v6, 0x3

    const/4 v7, 0x3

    aget-byte v3, v3, v7

    aput-byte v3, v0, v6

    .line 1060
    invoke-static {v4, v5}, Lcom/crashlytics/android/CLSUUID;->convertLongToTwoByteBuffer(J)[B

    move-result-object v3

    .line 1061
    const/4 v4, 0x4

    const/4 v5, 0x0

    aget-byte v5, v3, v5

    aput-byte v5, v0, v4

    .line 1062
    const/4 v4, 0x5

    const/4 v5, 0x1

    aget-byte v3, v3, v5

    aput-byte v3, v0, v4

    .line 2066
    sget-object v3, Lcom/crashlytics/android/CLSUUID;->_sequenceNumber:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/crashlytics/android/CLSUUID;->convertLongToTwoByteBuffer(J)[B

    move-result-object v3

    .line 2067
    const/4 v4, 0x6

    const/4 v5, 0x0

    aget-byte v5, v3, v5

    aput-byte v5, v0, v4

    .line 2068
    const/4 v4, 0x7

    const/4 v5, 0x1

    aget-byte v3, v3, v5

    aput-byte v3, v0, v4

    .line 2072
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2073
    invoke-virtual {v3}, Ljava/lang/Integer;->shortValue()S

    move-result v3

    int-to-long v4, v3

    invoke-static {v4, v5}, Lcom/crashlytics/android/CLSUUID;->convertLongToTwoByteBuffer(J)[B

    move-result-object v3

    .line 2074
    const/16 v4, 0x8

    const/4 v5, 0x0

    aget-byte v5, v3, v5

    aput-byte v5, v0, v4

    .line 2075
    const/16 v4, 0x9

    const/4 v5, 0x1

    aget-byte v3, v3, v5

    aput-byte v3, v0, v4

    .line 41
    invoke-virtual {p1}, Lio/fabric/sdk/android/services/common/IdManager;->getAppInstallIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/fabric/sdk/android/services/common/CommonUtils;->sha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "idSha":Ljava/lang/String;
    invoke-static {v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->hexify([B)Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, "timeSeqPid":Ljava/lang/String;
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "%s-%s-%s-%s"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xc

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/16 v7, 0xc

    const/16 v8, 0x10

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/16 v7, 0x10

    const/16 v8, 0x14

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/16 v8, 0xc

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/crashlytics/android/CLSUUID;->_clsId:Ljava/lang/String;

    .line 47
    return-void
.end method

.method private static convertLongToTwoByteBuffer(J)[B
    .registers 4
    .param p0, "value"    # J

    .prologue
    .line 88
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 89
    .local v0, "buf":Ljava/nio/ByteBuffer;
    long-to-int v1, p0

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 90
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 91
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 93
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 97
    sget-object v0, Lcom/crashlytics/android/CLSUUID;->_clsId:Ljava/lang/String;

    return-object v0
.end method
