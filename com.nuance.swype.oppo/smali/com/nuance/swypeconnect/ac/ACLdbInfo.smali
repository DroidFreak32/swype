.class Lcom/nuance/swypeconnect/ac/ACLdbInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swypeconnect/ac/ACLdbInfo$PositionInputStream;
    }
.end annotation


# static fields
.field private static final ALPHA_CORE:I = 0x2

.field private static final CHINESE_CORE:I = 0xa

.field private static final ET9LDBOFFSET_BODY:I = 0x41

.field private static final ET9LDBOFFSET_CHUNK_COUNT_BYTE:I = 0x23

.field private static final ET9LDBOFFSET_CONTENTSMAJORVER:I = 0x35

.field private static final ET9LDBOFFSET_DATABASETYPE:I = 0x21

.field private static final ET9LDBOFFSET_LDBLAYOUTVER:I = 0x20

.field private static final ET9LDBOFFSET_PRIMARYLANGID:I = 0x39

.field private static final ET9LDBOFFSET_SECONDARYLANGID:I = 0x3a

.field private static final ET9NGRAM_CHUNK_ID:I = 0x5

.field private static final ET9_CP_CONTENT_VER_OFFSET:I = 0x2a

.field private static final ET9_CP_LANGUAGE_ID_OFFSET:I = 0x28

.field private static final HEADER_SIZE:I = 0x42

.field private static final SKIP_BUFFER_SIZE:I = 0x400

.field private static final STREAM_BUFFER_SIZE:I = 0x40000

.field private static log:Lcom/nuance/connect/util/Logger$Log;


# instance fields
.field private isALM:Ljava/lang/Boolean;

.field private langId:I

.field private version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v0}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->log:Lcom/nuance/connect/util/Logger$Log;

    return-void
.end method

.method private constructor <init>(ILjava/lang/Boolean;I)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "ACLdbInfo version="

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, " isALM="

    const-string v5, " langId=0x"

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    move-object v4, p2

    invoke-interface/range {v0 .. v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput p1, p0, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->version:I

    iput-object p2, p0, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->isALM:Ljava/lang/Boolean;

    iput p3, p0, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->langId:I

    return-void
.end method

.method private static getChunkCount([B)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x20

    aget-byte v1, p0, v0

    if-ltz v1, :cond_1

    const/16 v0, 0x23

    aget-byte v0, p0, v0

    if-ltz v0, :cond_1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    shr-int/lit8 v0, v0, 0x2

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static getLDBEndAddress([BLcom/nuance/swypeconnect/ac/ACLdbInfo$PositionInputStream;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x41

    aget-byte v0, p0, v0

    int-to-byte v0, v0

    mul-int/lit8 v1, v0, 0x4

    add-int/lit8 v1, v1, 0x41

    add-int/lit8 v1, v1, 0x1

    int-to-long v2, v1

    invoke-virtual {p1, v2, v3}, Lcom/nuance/swypeconnect/ac/ACLdbInfo$PositionInputStream;->skipToPosition(J)V

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACLdbInfo$PositionInputStream;->read()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACLdbInfo$PositionInputStream;->read()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    int-to-short v2, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit16 v2, v2, 0xff

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v0, 0x3

    add-int/2addr v0, v1

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/nuance/swypeconnect/ac/ACLdbInfo$PositionInputStream;->skipToPosition(J)V

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACLdbInfo$PositionInputStream;->read()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACLdbInfo$PositionInputStream;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACLdbInfo$PositionInputStream;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public static gzWrapInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 3

    const/4 v0, 0x2

    new-instance v1, Ljava/io/PushbackInputStream;

    invoke-direct {v1, p0, v0}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    new-array v0, v0, [B

    :try_start_0
    invoke-virtual {v1, v0}, Ljava/io/PushbackInputStream;->read([B)I

    invoke-virtual {v1, v0}, Ljava/io/PushbackInputStream;->unread([B)V

    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->isCompressed([B)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    const/high16 v2, 0x40000

    invoke-direct {v0, v1, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;I)V

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p0, Ljava/io/BufferedInputStream;

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/BufferedInputStream;

    const/high16 v2, 0x40000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "ACLdbInfo.gzWrapInputStream IOException trying to wrap stream."

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private static isALM([BLcom/nuance/swypeconnect/ac/ACLdbInfo$PositionInputStream;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getLDBEndAddress([BLcom/nuance/swypeconnect/ac/ACLdbInfo$PositionInputStream;)I

    move-result v1

    invoke-static {p0}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getChunkCount([B)I

    move-result v3

    move v2, v1

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    int-to-long v4, v2

    invoke-virtual {p1, v4, v5}, Lcom/nuance/swypeconnect/ac/ACLdbInfo$PositionInputStream;->skipToPosition(J)V

    const/4 v4, 0x5

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACLdbInfo$PositionInputStream;->read()I

    move-result v5

    if-ne v4, v5, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACLdbInfo$PositionInputStream;->read()I

    move-result v4

    shl-int/lit8 v4, v4, 0x10

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACLdbInfo$PositionInputStream;->read()I

    move-result v5

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACLdbInfo$PositionInputStream;->read()I

    move-result v5

    or-int/2addr v4, v5

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static isCompressed([B)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    array-length v2, p0

    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    aget-byte v2, p0, v1

    const/16 v3, 0x1f

    if-ne v2, v3, :cond_3

    aget-byte v2, p0, v0

    const/16 v3, -0x75

    if-eq v2, v3, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static load(Ljava/io/InputStream;)Lcom/nuance/swypeconnect/ac/ACLdbInfo;
    .locals 6

    const/4 v0, 0x0

    const/16 v1, 0x42

    :try_start_0
    new-array v3, v1, [B

    new-instance v2, Lcom/nuance/swypeconnect/ac/ACLdbInfo$PositionInputStream;

    invoke-direct {v2, p0}, Lcom/nuance/swypeconnect/ac/ACLdbInfo$PositionInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2, v3}, Lcom/nuance/swypeconnect/ac/ACLdbInfo$PositionInputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_10
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    :try_start_2
    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACLdbInfo$PositionInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :goto_0
    if-eqz p0, :cond_0

    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    :try_start_4
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v4, 0x21

    aget-byte v4, v3, v4

    sparse-switch v4, :sswitch_data_0

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "Unknown LDB type: "

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_11
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_10
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACLdbInfo$PositionInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_b

    :goto_2
    if-eqz p0, :cond_0

    :try_start_6
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_1

    :sswitch_0
    const/16 v4, 0x35

    :try_start_7
    aget-byte v4, v3, v4

    if-ltz v4, :cond_2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_2
    const/16 v1, 0x3a

    aget-byte v1, v3, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v5, 0x39

    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v5, v1

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACLdbInfo;

    invoke-static {v3, v2}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->isALM([BLcom/nuance/swypeconnect/ac/ACLdbInfo$PositionInputStream;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v4, v3, v5}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;-><init>(ILjava/lang/Boolean;I)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_11
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_10
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACLdbInfo$PositionInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    :goto_3
    if-eqz p0, :cond_3

    :try_start_9
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    :cond_3
    :goto_4
    move-object v0, v1

    goto :goto_1

    :sswitch_1
    const/16 v4, 0x2a

    :try_start_a
    aget-byte v4, v3, v4

    if-ltz v4, :cond_4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_4
    const/16 v1, 0x29

    aget-byte v1, v3, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v5, 0x28

    aget-byte v3, v3, v5

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v3, v1

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACLdbInfo;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5, v3}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;-><init>(ILjava/lang/Boolean;I)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_11
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_10
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACLdbInfo$PositionInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    :goto_5
    if-eqz p0, :cond_5

    :try_start_c
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    :cond_5
    :goto_6
    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v1, v0

    :goto_7
    :try_start_d
    sget-object v2, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "Error parsing LDB (not found): "

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    if-eqz v1, :cond_6

    :try_start_e
    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACLdbInfo$PositionInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_c

    :cond_6
    :goto_8
    if-eqz p0, :cond_0

    :try_start_f
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v1

    goto/16 :goto_1

    :catch_3
    move-exception v1

    move-object v2, v0

    :goto_9
    :try_start_10
    sget-object v3, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v4, "Error parsing LDB (exception): "

    const-string v5, " Exception: "

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v4, v5, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    if-eqz v2, :cond_7

    :try_start_11
    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACLdbInfo$PositionInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_d

    :cond_7
    :goto_a
    if-eqz p0, :cond_0

    :try_start_12
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_4

    goto/16 :goto_1

    :catch_4
    move-exception v1

    goto/16 :goto_1

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_b
    if-eqz v2, :cond_8

    :try_start_13
    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACLdbInfo$PositionInputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_e

    :cond_8
    :goto_c
    if-eqz p0, :cond_9

    :try_start_14
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_f

    :cond_9
    :goto_d
    throw v0

    :catch_5
    move-exception v1

    goto/16 :goto_0

    :catch_6
    move-exception v1

    goto/16 :goto_1

    :catch_7
    move-exception v0

    goto :goto_3

    :catch_8
    move-exception v0

    goto :goto_4

    :catch_9
    move-exception v0

    goto :goto_5

    :catch_a
    move-exception v0

    goto :goto_6

    :catch_b
    move-exception v1

    goto/16 :goto_2

    :catch_c
    move-exception v1

    goto :goto_8

    :catch_d
    move-exception v1

    goto :goto_a

    :catch_e
    move-exception v1

    goto :goto_c

    :catch_f
    move-exception v1

    goto :goto_d

    :catchall_1
    move-exception v0

    goto :goto_b

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_b

    :catch_10
    move-exception v1

    goto :goto_9

    :catch_11
    move-exception v1

    move-object v1, v2

    goto :goto_7

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public static load(Ljava/lang/String;Landroid/content/Context;)Lcom/nuance/swypeconnect/ac/ACLdbInfo;
    .locals 4

    const/4 v1, 0x0

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "load("

    const-string v3, ")"

    invoke-interface {v0, v2, p0, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->gzWrapInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_2

    :try_start_1
    invoke-static {v2}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->load(Ljava/io/InputStream;)Lcom/nuance/swypeconnect/ac/ACLdbInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    :try_start_3
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v2}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->gzWrapInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_3
    :goto_2
    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_4
    throw v0
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_0
    move-exception v0

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "ACLdbInfo.load FileNotFoundException for file or asset: "

    invoke-interface {v0, v2, p0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :catch_1
    move-exception v0

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "ACLdbInfo.load IOException for file or asset: "

    invoke-interface {v0, v2, p0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3
.end method


# virtual methods
.method public getVersion()I
    .locals 1

    iget v0, p0, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->version:I

    return v0
.end method

.method protected getXT9LanguageId()I
    .locals 1

    iget v0, p0, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->langId:I

    return v0
.end method

.method protected isALM()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->isALM:Ljava/lang/Boolean;

    return-object v0
.end method
