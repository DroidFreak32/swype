.class public Lcom/nuance/nmsp/client/util/internal/dictationresult/util/Util;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/util/Util;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory;->getLog(Ljava/lang/Class;)Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/util/Util;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesToInt([BI)I
    .registers 5

    const v2, 0xffff

    invoke-static {p0, p1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/util/Util;->bytesToUShort([BI)I

    move-result v0

    and-int/2addr v0, v2

    add-int/lit8 v1, p1, 0x2

    invoke-static {p0, v1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/util/Util;->bytesToUShort([BI)I

    move-result v1

    and-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    return v0
.end method

.method public static bytesToUInt([BI)J
    .registers 6

    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    aget-byte v3, p0, p1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v0, v0, 0x18

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, v3

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static bytesToUShort([BI)I
    .registers 4

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method public static computeStrLen([BI)I
    .registers 6

    sget-object v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/util/Util;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/util/Util;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "Computing string length"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->trace(Ljava/lang/Object;)V

    :cond_10
    move v0, p1

    :goto_11
    aget-byte v1, p0, v0

    if-eqz v1, :cond_18

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_18
    sub-int/2addr v0, p1

    sget-object v1, Lcom/nuance/nmsp/client/util/internal/dictationresult/util/Util;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_3d

    sget-object v1, Lcom/nuance/nmsp/client/util/internal/dictationresult/util/Util;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "String length: ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->trace(Ljava/lang/Object;)V

    :cond_3d
    return v0
.end method

.method public static constructByteEncodedString([BIILjava/lang/String;)Ljava/lang/String;
    .registers 7

    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-object v0

    :catch_6
    move-exception v0

    sget-object v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/util/Util;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_28

    sget-object v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/util/Util;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " character encoding is not available in your VM. Using the default one."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->warn(Ljava/lang/Object;)V

    :cond_28
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([BII)V

    goto :goto_5
.end method

.method public static trimWhiteSpace(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/16 v4, 0x20

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    :goto_b
    if-ge v1, v0, :cond_14

    aget-char v3, v2, v1

    if-ne v3, v4, :cond_14

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_14
    :goto_14
    if-ge v1, v0, :cond_1f

    add-int/lit8 v3, v0, -0x1

    aget-char v3, v2, v3

    if-ne v3, v4, :cond_1f

    add-int/lit8 v0, v0, -0x1

    goto :goto_14

    :cond_1f
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
