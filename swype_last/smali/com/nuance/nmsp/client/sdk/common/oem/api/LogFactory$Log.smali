.class public abstract Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Log"
.end annotation


# static fields
.field private static a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "0"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "8"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "9"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "A"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "B"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "C"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "D"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "E"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "F"

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static FormatUuid([B)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_6

    const-string/jumbo v0, ""

    :goto_5
    return-object v0

    :cond_6
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_c
    const/16 v2, 0x10

    if-ge v0, v2, :cond_2f

    aget-byte v2, p0, v0

    invoke-static {v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->a(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x3

    if-eq v0, v2, :cond_26

    const/4 v2, 0x5

    if-eq v0, v2, :cond_26

    const/4 v2, 0x7

    if-eq v0, v2, :cond_26

    const/16 v2, 0x9

    if-ne v0, v2, :cond_2c

    :cond_26
    const-string/jumbo v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_2f
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method private static a(B)Ljava/lang/String;
    .registers 5

    and-int/lit16 v0, p0, 0xf0

    int-to-byte v0, v0

    ushr-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    and-int/lit8 v0, v0, 0xf

    int-to-byte v0, v0

    and-int/lit8 v1, p0, 0xf

    int-to-byte v1, v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->a:[Ljava/lang/String;

    aget-object v0, v3, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->a:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bufferStr([B)[Ljava/lang/String;
    .registers 13

    const/16 v11, 0x29

    const/4 v3, 0x0

    array-length v0, p0

    div-int/lit8 v0, v0, 0x8

    array-length v1, p0

    rem-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_d

    add-int/lit8 v0, v0, 0x1

    :cond_d
    new-array v6, v0, [Ljava/lang/String;

    :try_start_f
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v2, "ISO-8859-1"

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_17
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_f .. :try_end_17} :catch_27

    :goto_17
    move v5, v3

    move v2, v3

    :goto_19
    if-ge v5, v0, :cond_6b

    new-array v7, v11, [C

    move v4, v3

    :goto_1e
    if-ge v4, v11, :cond_2e

    const/16 v8, 0x20

    aput-char v8, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    :catch_27
    move-exception v1

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    goto :goto_17

    :cond_2e
    move v4, v2

    move v2, v3

    :goto_30
    const/16 v8, 0x8

    if-ge v2, v8, :cond_5f

    array-length v8, p0

    if-ge v4, v8, :cond_5f

    aget-byte v8, p0, v4

    invoke-static {v8}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->a(B)Ljava/lang/String;

    move-result-object v8

    mul-int/lit8 v9, v2, 0x3

    invoke-virtual {v8, v3}, Ljava/lang/String;->charAt(I)C

    move-result v10

    aput-char v10, v7, v9

    mul-int/lit8 v9, v2, 0x3

    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aput-char v8, v7, v9

    shl-int/lit8 v8, v2, 0x1

    add-int/lit8 v8, v8, 0x1a

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    aput-char v9, v7, v8

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    :cond_5f
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v7}, Ljava/lang/String;-><init>([C)V

    aput-object v2, v6, v5

    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move v2, v4

    goto :goto_19

    :cond_6b
    return-object v6
.end method


# virtual methods
.method public abstract debug(Ljava/lang/Object;)V
.end method

.method public abstract debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
.end method

.method public abstract error(Ljava/lang/Object;)V
.end method

.method public abstract error(Ljava/lang/Object;Ljava/lang/Throwable;)V
.end method

.method public abstract fatal(Ljava/lang/Object;)V
.end method

.method public abstract fatal(Ljava/lang/Object;Ljava/lang/Throwable;)V
.end method

.method public abstract info(Ljava/lang/Object;)V
.end method

.method public abstract info(Ljava/lang/Object;Ljava/lang/Throwable;)V
.end method

.method public abstract isDebugEnabled()Z
.end method

.method public abstract isErrorEnabled()Z
.end method

.method public abstract isFatalEnabled()Z
.end method

.method public abstract isInfoEnabled()Z
.end method

.method public abstract isTraceEnabled()Z
.end method

.method public abstract isWarnEnabled()Z
.end method

.method public abstract setCurrentSession(Ljava/lang/String;)V
.end method

.method public abstract trace(Ljava/lang/Object;)V
.end method

.method public abstract trace(Ljava/lang/Object;Ljava/lang/Throwable;)V
.end method

.method public traceBuffer([B)V
    .registers 5

    invoke-virtual {p0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string/jumbo v0, "Buffer dump:"

    invoke-virtual {p0, v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->trace(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->bufferStr([B)[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_11
    array-length v2, v1

    if-ge v0, v2, :cond_1c

    aget-object v2, v1, v0

    invoke-virtual {p0, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->trace(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_1c
    return-void
.end method

.method public abstract unsetCurrentSession()V
.end method

.method public abstract warn(Ljava/lang/Object;)V
.end method

.method public abstract warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
.end method
