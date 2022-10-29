.class public Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/ResultParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser$1;,
        Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser$a;,
        Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser$b;
    }
.end annotation


# static fields
.field private static final a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;


# instance fields
.field private b:[B

.field private c:Ljava/lang/String;

.field private d:Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser$1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory;->getLog(Ljava/lang/Class;)Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    return-void
.end method

.method public constructor <init>([B)V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "Cp1252"

    iput-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->d:Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser$1;

    iput-object p1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->b:[B

    new-instance v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser$1;

    invoke-direct {v0, p0, v1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser$1;-><init>(Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;B)V

    invoke-direct {p0, v1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->a(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-direct {p0, v2, v1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->a(II)I

    move-result v1

    iput v1, v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser$1;->e:I

    invoke-direct {p0, v1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->b(I)I

    move-result v2

    add-int/lit8 v1, v1, 0x4

    invoke-direct {p0, v1, v2}, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->b(II)I

    move-result v1

    iput v1, v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser$1;->d:I

    invoke-direct {p0, v1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->f(I)I

    move-result v2

    add-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v1, v2}, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->a(II)I

    move-result v1

    const/4 v2, 0x3

    array-length v3, p1

    invoke-direct {p0, v2, v1, v3}, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->a(III)I

    move-result v2

    iput v2, v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser$1;->b:I

    const/4 v2, 0x4

    array-length v3, p1

    invoke-direct {p0, v2, v1, v3}, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->a(III)I

    move-result v2

    iput v2, v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser$1;->c:I

    const/4 v2, 0x1

    array-length v3, p1

    invoke-direct {p0, v2, v1, v3}, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->a(III)I

    move-result v1

    iput v1, v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser$1;->a:I

    iput-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->d:Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser$1;

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->d:Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser$1;

    iget v1, v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser$1;->c:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_5b

    const-string/jumbo v1, "Cp1252"

    :cond_58
    :goto_58
    iput-object v1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->c:Ljava/lang/String;

    return-void

    :cond_5b
    iget v0, v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser$1;->c:I

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->b:[B

    invoke-static {v1, v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/util/Util;->bytesToUInt([BI)J

    move-result-wide v2

    long-to-int v1, v2

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x4

    iget-object v2, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->b:[B

    const-string/jumbo v3, "Cp1252"

    invoke-static {v2, v0, v1, v3}, Lcom/nuance/nmsp/client/util/internal/dictationresult/util/Util;->constructByteEncodedString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "Windows-1252"

    if-ne v1, v0, :cond_85

    const-string/jumbo v0, "Cp1252"

    :goto_7b
    invoke-static {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_58

    const-string/jumbo v1, "Cp1252"

    goto :goto_58

    :cond_85
    move-object v0, v1

    goto :goto_7b
.end method

.method private a(I)I
    .registers 6

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->b:[B

    invoke-static {v0, p1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/util/Util;->bytesToUShort([BI)I

    move-result v0

    sget-object v1, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_23

    sget-object v1, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Number of words: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->trace(Ljava/lang/Object;)V

    :cond_23
    return v0
.end method

.method private a(II)I
    .registers 5

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->b:[B

    array-length v1, v1

    if-ge p1, v1, :cond_13

    if-ge v0, p2, :cond_13

    iget-object v1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->b:[B

    aget-byte v1, v1, p1

    if-nez v1, :cond_10

    add-int/lit8 v0, v0, 0x1

    :cond_10
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_13
    return p1
.end method

.method private a(III)I
    .registers 10

    move v0, p2

    :goto_1
    if-ge v0, p3, :cond_56

    iget-object v1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->b:[B

    invoke-static {v1, v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/util/Util;->bytesToUInt([BI)J

    move-result-wide v2

    sget-object v1, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_26

    sget-object v1, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Received extension id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->trace(Ljava/lang/Object;)V

    :cond_26
    int-to-long v4, p1

    cmp-long v1, v2, v4

    if-nez v1, :cond_2c

    :goto_2b
    return v0

    :cond_2c
    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->b:[B

    invoke-static {v1, v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/util/Util;->bytesToUInt([BI)J

    move-result-wide v2

    sget-object v1, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_51

    sget-object v1, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Received payload size: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->trace(Ljava/lang/Object;)V

    :cond_51
    long-to-int v1, v2

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x4

    goto :goto_1

    :cond_56
    const/4 v0, -0x1

    goto :goto_2b
.end method

.method private a(IILjava/util/Vector;)Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser$a;
    .registers 14

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->c(I)I

    move-result v2

    add-int/lit8 v1, p1, 0x4

    new-instance v3, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;

    invoke-direct {v3}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;-><init>()V

    new-instance v4, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser$a;

    invoke-direct {v4, p0, v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser$a;-><init>(Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;B)V

    :goto_11
    if-ge v0, v2, :cond_6c

    const/4 v5, 0x2

    invoke-direct {p0, v1, p2, v5, p3}, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->a(IIILjava/util/Vector;)Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser$b;

    move-result-object v5

    iget-object v1, v5, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser$b;->c:Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    invoke-virtual {v3, v1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->appendTokenToSentence(Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;)V

    iget v1, v5, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser$b;->a:I

    iget p2, v5, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser$b;->b:I

    sget-object v6, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v6}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isTraceEnabled()Z

    move-result v6

    if-eqz v6, :cond_69

    iget-object v5, v5, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser$b;->c:Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    sget-object v6, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Extracted word: startTime ["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->getStartTime()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "] endTime ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->getEndTime()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "] content ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->getWord()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "]"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->trace(Ljava/lang/Object;)V

    :cond_69
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_6c
    iput v1, v4, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser$a;->b:I

    iput p2, v4, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser$a;->c:I

    iput-object v3, v4, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser$a;->a:Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;

    return-object v4
.end method

.method private a(IIILjava/util/Vector;)Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser$b;
    .registers 16

    new-instance v10, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser$b;

    const/4 v0, 0x0

    invoke-direct {v10, p0, v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser$b;-><init>(Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;B)V

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->b:[B

    invoke-static {v0, p1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/util/Util;->bytesToUShort([BI)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v4, p1, 0x2

    invoke-virtual {p4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v0, 0x4

    if-ne p3, v0, :cond_40

    invoke-direct {p0, v4}, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->e(I)J

    move-result-wide v2

    add-int v0, v4, p3

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->e(I)J

    move-result-wide v4

    add-int/2addr v0, p3

    move v9, v0

    :goto_25
    const-wide/16 v6, 0x0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_33

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->b:[B

    invoke-static {v0, p2}, Lcom/nuance/nmsp/client/util/internal/dictationresult/util/Util;->bytesToUShort([BI)I

    move-result v0

    int-to-double v6, v0

    add-int/lit8 p2, p2, 0x2

    :cond_33
    new-instance v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v8}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;-><init>(Ljava/lang/String;JJDZ)V

    iput-object v0, v10, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser$b;->c:Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    iput v9, v10, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser$b;->a:I

    iput p2, v10, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser$b;->b:I

    return-object v10

    :cond_40
    invoke-direct {p0, v4}, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->d(I)I

    move-result v0

    int-to-long v2, v0

    add-int v0, v4, p3

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->d(I)I

    move-result v4

    int-to-long v4, v4

    add-int/2addr v0, p3

    move v9, v0

    goto :goto_25
.end method

.method private a(Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser$1;Ljava/util/Vector;)Ljava/util/Vector;
    .registers 14

    const/4 v2, 0x1

    const/4 v5, -0x1

    const/4 v1, 0x0

    iget v0, p1, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser$1;->a:I

    if-eq v0, v5, :cond_a3

    move v4, v2

    :goto_8
    if-eqz v4, :cond_a6

    iget v0, p1, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser$1;->a:I

    :goto_c
    iget v3, p1, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser$1;->b:I

    if-eq v3, v5, :cond_aa

    move v3, v2

    :goto_11
    if-eqz v4, :cond_17

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x4

    :cond_17
    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->b(I)I

    move-result v5

    add-int/lit8 v2, v0, 0x4

    iget v0, p1, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser$1;->b:I

    if-eqz v3, :cond_29

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x4

    :cond_29
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    move v10, v2

    move v2, v0

    move v0, v10

    :goto_31
    if-ge v1, v5, :cond_b2

    if-eqz v4, :cond_ad

    invoke-direct {p0, v0, v2, p2}, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->b(IILjava/util/Vector;)Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser$a;

    move-result-object v0

    :goto_39
    sget-object v2, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isTraceEnabled()Z

    move-result v2

    if-eqz v2, :cond_6e

    sget-object v2, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Number of words in Sentence "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v7, ": ["

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser$a;->a:Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;

    invoke-virtual {v7}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->size()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v7, "]"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->trace(Ljava/lang/Object;)V

    :cond_6e
    iget-object v2, v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser$a;->a:Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;

    invoke-virtual {v6, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget v2, v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser$a;->b:I

    iget v3, v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser$a;->c:I

    sget-object v7, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v7}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isTraceEnabled()Z

    move-result v7

    if-eqz v7, :cond_9d

    sget-object v7, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Extracted sentence: ["

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser$a;->a:Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v8, "]"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->trace(Ljava/lang/Object;)V

    :cond_9d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    move v2, v3

    goto :goto_31

    :cond_a3
    move v4, v1

    goto/16 :goto_8

    :cond_a6
    iget v0, p1, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser$1;->e:I

    goto/16 :goto_c

    :cond_aa
    move v3, v1

    goto/16 :goto_11

    :cond_ad
    invoke-direct {p0, v0, v2, p2}, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->a(IILjava/util/Vector;)Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser$a;

    move-result-object v0

    goto :goto_39

    :cond_b2
    return-object v6
.end method

.method private static a(Ljava/util/Hashtable;)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "CFD"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1a

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1a
    const-string/jumbo v0, "IAL"

    invoke-virtual {p0, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    const-string/jumbo v0, "InputAudioLength"

    const-string/jumbo v1, "IAL"

    invoke-virtual {p0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_30
    return-void
.end method

.method private static a(Ljava/util/Hashtable;Ljava/util/Vector;)V
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_33

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "CFD"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2d

    :try_start_20
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_23
    .catch Ljava/lang/NumberFormatException; {:try_start_20 .. :try_end_23} :catch_31

    move-result-wide v2

    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;

    invoke-virtual {v0, v2, v3}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->setConfidenceScore(D)V

    :cond_2d
    :goto_2d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :catch_31
    move-exception v0

    goto :goto_2d

    :cond_33
    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_3
    new-array v2, v2, [B

    const/4 v3, 0x0

    const/16 v4, 0x14

    aput-byte v4, v2, v3
    :try_end_a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_a} :catch_b

    :goto_a
    return v0

    :catch_b
    move-exception v0

    sget-object v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_2d

    sget-object v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " character encoding is not available in your VM. Using the default one."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->warn(Ljava/lang/Object;)V

    :cond_2d
    move v0, v1

    goto :goto_a
.end method

.method private b(I)I
    .registers 6

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->b:[B

    invoke-static {v0, p1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/util/Util;->bytesToInt([BI)I

    move-result v0

    sget-object v1, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_23

    sget-object v1, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Number of sentences: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->trace(Ljava/lang/Object;)V

    :cond_23
    return v0
.end method

.method private b(II)I
    .registers 8

    const/4 v1, 0x0

    move v3, v1

    :goto_2
    if-ge v3, p2, :cond_18

    invoke-direct {p0, p1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->c(I)I

    move-result v4

    add-int/lit8 v0, p1, 0x4

    move v2, v0

    move v0, v1

    :goto_c
    if-ge v0, v4, :cond_13

    add-int/lit8 v2, v2, 0x6

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_13
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move p1, v2

    goto :goto_2

    :cond_18
    return p1
.end method

.method private b(IILjava/util/Vector;)Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser$a;
    .registers 14

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->c(I)I

    move-result v2

    add-int/lit8 v1, p1, 0x4

    new-instance v3, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser$a;

    invoke-direct {v3, p0, v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser$a;-><init>(Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;B)V

    :goto_c
    if-ge v0, v2, :cond_69

    const/4 v4, 0x4

    invoke-direct {p0, v1, p2, v4, p3}, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->a(IIILjava/util/Vector;)Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser$b;

    move-result-object v4

    iget-object v1, v3, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser$a;->a:Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;

    iget-object v5, v4, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser$b;->c:Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    invoke-virtual {v1, v5}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->appendTokenToSentence(Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;)V

    iget v1, v4, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser$b;->a:I

    iget p2, v4, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser$b;->b:I

    sget-object v5, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v5}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isTraceEnabled()Z

    move-result v5

    if-eqz v5, :cond_66

    iget-object v4, v4, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser$b;->c:Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    sget-object v5, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Extracted word: startTime ["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->getStartTime()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "] endTime ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->getEndTime()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "] content ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->getWord()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->trace(Ljava/lang/Object;)V

    :cond_66
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_69
    iput v1, v3, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser$a;->b:I

    iput p2, v3, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser$a;->c:I

    return-object v3
.end method

.method private c(I)I
    .registers 3

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->b:[B

    invoke-static {v0, p1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/util/Util;->bytesToInt([BI)I

    move-result v0

    return v0
.end method

.method private c(II)Ljava/util/Vector;
    .registers 10

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    const/4 v0, 0x0

    :goto_6
    if-ge v0, p1, :cond_5b

    iget-object v2, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->b:[B

    invoke-static {v2, p2}, Lcom/nuance/nmsp/client/util/internal/dictationresult/util/Util;->computeStrLen([BI)I

    move-result v2

    iget-object v3, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->b:[B

    invoke-virtual {p0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->getEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, p2, v2, v4}, Lcom/nuance/nmsp/client/util/internal/dictationresult/util/Util;->constructByteEncodedString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    sget-object v4, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v4}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isTraceEnabled()Z

    move-result v4

    if-eqz v4, :cond_55

    sget-object v4, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Added a word to the list: ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "] offset ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "] len ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->trace(Ljava/lang/Object;)V

    :cond_55
    add-int/lit8 v2, v2, 0x1

    add-int/2addr p2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_5b
    return-object v1
.end method

.method private d(I)I
    .registers 3

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->b:[B

    invoke-static {v0, p1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/util/Util;->bytesToUShort([BI)I

    move-result v0

    return v0
.end method

.method private e(I)J
    .registers 4

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->b:[B

    invoke-static {v0, p1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/util/Util;->bytesToUInt([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method private f(I)I
    .registers 6

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->b:[B

    invoke-static {v0, p1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/util/Util;->bytesToUShort([BI)I

    move-result v0

    sget-object v1, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_23

    sget-object v1, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Number of key-value pairs: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->trace(Ljava/lang/Object;)V

    :cond_23
    return v0
.end method

.method private g(I)Ljava/util/Hashtable;
    .registers 10

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->f(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x2

    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->c(II)Ljava/util/Vector;

    move-result-object v4

    sget-object v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_38

    sget-object v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Extracted "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, " words from the set of key-value pairs."

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->trace(Ljava/lang/Object;)V

    :cond_38
    move v1, v2

    :goto_39
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_7f

    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v5, 0x3d

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_6a

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Received an invalid key-value pair: "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6a
    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v0, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v6, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_39

    :cond_7f
    return-object v3
.end method


# virtual methods
.method public getEncoding()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->c:Ljava/lang/String;

    const-string/jumbo v1, "Cp1252"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string/jumbo v0, "Windows-1252"

    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->c:Ljava/lang/String;

    goto :goto_e
.end method

.method public parse()Lcom/nuance/nmsp/client/util/dictationresult/DictationResult;
    .registers 6

    const/4 v1, 0x0

    sget-object v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v2, "Unpacking DNS binary version 3.2 results."

    invoke-virtual {v0, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->a(I)I

    move-result v0

    const/4 v2, 0x2

    invoke-direct {p0, v0, v2}, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->c(II)Ljava/util/Vector;

    move-result-object v2

    sget-object v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_59

    sget-object v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Found "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " in word list"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    sget-object v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_59

    move v0, v1

    :goto_43
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_59

    sget-object v3, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->trace(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_43

    :cond_59
    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->d:Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser$1;

    invoke-direct {p0, v0, v2}, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->a(Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser$1;Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v0

    sget-object v2, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_a5

    sget-object v2, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Found "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " in n-best list"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    sget-object v2, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isTraceEnabled()Z

    move-result v2

    if-eqz v2, :cond_a5

    :goto_8f
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_a5

    sget-object v2, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->trace(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8f

    :cond_a5
    iget-object v1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->d:Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser$1;

    iget v1, v1, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser$1;->d:I

    invoke-direct {p0, v1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->g(I)Ljava/util/Hashtable;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->a(Ljava/util/Hashtable;Ljava/util/Vector;)V

    invoke-static {v1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;->a(Ljava/util/Hashtable;)V

    new-instance v2, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;

    invoke-direct {v2, v0, v1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;-><init>(Ljava/util/Vector;Ljava/util/Hashtable;)V

    return-object v2
.end method
