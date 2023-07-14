.class public final Lcom/google/api/client/http/ByteArrayContent;
.super Lcom/google/api/client/http/AbstractInputStreamContent;
.source "ByteArrayContent.java"


# instance fields
.field private final byteArray:[B

.field private final length:I

.field private final offset:I


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "array"    # [B

    .prologue
    .line 65
    const/4 v0, 0x0

    array-length v1, p2

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/api/client/http/ByteArrayContent;-><init>(Ljava/lang/String;[BII)V

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BII)V
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "array"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 79
    invoke-direct {p0, p1}, Lcom/google/api/client/http/AbstractInputStreamContent;-><init>(Ljava/lang/String;)V

    .line 1127
    invoke-static {p2}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 80
    check-cast v0, [B

    iput-object v0, p0, Lcom/google/api/client/http/ByteArrayContent;->byteArray:[B

    .line 81
    if-ltz p3, :cond_0

    if-ltz p4, :cond_0

    add-int v0, p3, p4

    array-length v3, p2

    if-gt v0, v3, :cond_0

    move v0, v1

    :goto_0
    const-string/jumbo v3, "offset %s, length %s, array length %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x2

    array-length v2, p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v0, v3, v4}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 83
    iput p3, p0, Lcom/google/api/client/http/ByteArrayContent;->offset:I

    .line 84
    iput p4, p0, Lcom/google/api/client/http/ByteArrayContent;->length:I

    .line 85
    return-void

    :cond_0
    move v0, v2

    .line 81
    goto :goto_0
.end method

.method public static fromString(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/ByteArrayContent;
    .locals 2
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "contentString"    # Ljava/lang/String;

    .prologue
    .line 107
    new-instance v0, Lcom/google/api/client/http/ByteArrayContent;

    invoke-static {p1}, Lcom/google/api/client/util/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/api/client/http/ByteArrayContent;-><init>(Ljava/lang/String;[B)V

    return-object v0
.end method


# virtual methods
.method public final getInputStream()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 120
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/google/api/client/http/ByteArrayContent;->byteArray:[B

    iget v2, p0, Lcom/google/api/client/http/ByteArrayContent;->offset:I

    iget v3, p0, Lcom/google/api/client/http/ByteArrayContent;->length:I

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v0
.end method

.method public final getLength()J
    .locals 2

    .prologue
    .line 111
    iget v0, p0, Lcom/google/api/client/http/ByteArrayContent;->length:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final retrySupported()Z
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method public final bridge synthetic setCloseInputStream(Z)Lcom/google/api/client/http/AbstractInputStreamContent;
    .locals 1
    .param p1, "x0"    # Z

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/ByteArrayContent;->setCloseInputStream(Z)Lcom/google/api/client/http/ByteArrayContent;

    move-result-object v0

    return-object v0
.end method

.method public final setCloseInputStream(Z)Lcom/google/api/client/http/ByteArrayContent;
    .locals 1
    .param p1, "closeInputStream"    # Z

    .prologue
    .line 130
    invoke-super {p0, p1}, Lcom/google/api/client/http/AbstractInputStreamContent;->setCloseInputStream(Z)Lcom/google/api/client/http/AbstractInputStreamContent;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/ByteArrayContent;

    return-object v0
.end method

.method public final bridge synthetic setType(Ljava/lang/String;)Lcom/google/api/client/http/AbstractInputStreamContent;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/ByteArrayContent;->setType(Ljava/lang/String;)Lcom/google/api/client/http/ByteArrayContent;

    move-result-object v0

    return-object v0
.end method

.method public final setType(Ljava/lang/String;)Lcom/google/api/client/http/ByteArrayContent;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 125
    invoke-super {p0, p1}, Lcom/google/api/client/http/AbstractInputStreamContent;->setType(Ljava/lang/String;)Lcom/google/api/client/http/AbstractInputStreamContent;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/ByteArrayContent;

    return-object v0
.end method
