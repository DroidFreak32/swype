.class public final Lcom/google/api/client/http/InputStreamContent;
.super Lcom/google/api/client/http/AbstractInputStreamContent;
.source "InputStreamContent.java"


# instance fields
.field private final inputStream:Ljava/io/InputStream;

.field private length:J

.field private retrySupported:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/InputStream;)V
    .registers 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/google/api/client/http/AbstractInputStreamContent;-><init>(Ljava/lang/String;)V

    .line 53
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/api/client/http/InputStreamContent;->length:J

    .line 1127
    invoke-static {p2}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 68
    check-cast v0, Ljava/io/InputStream;

    iput-object v0, p0, Lcom/google/api/client/http/InputStreamContent;->inputStream:Ljava/io/InputStream;

    .line 69
    return-void
.end method


# virtual methods
.method public final getInputStream()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/api/client/http/InputStreamContent;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public final getLength()J
    .registers 3

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/google/api/client/http/InputStreamContent;->length:J

    return-wide v0
.end method

.method public final retrySupported()Z
    .registers 2

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/google/api/client/http/InputStreamContent;->retrySupported:Z

    return v0
.end method

.method public final bridge synthetic setCloseInputStream(Z)Lcom/google/api/client/http/AbstractInputStreamContent;
    .registers 3
    .param p1, "x0"    # Z

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/InputStreamContent;->setCloseInputStream(Z)Lcom/google/api/client/http/InputStreamContent;

    move-result-object v0

    return-object v0
.end method

.method public final setCloseInputStream(Z)Lcom/google/api/client/http/InputStreamContent;
    .registers 3
    .param p1, "closeInputStream"    # Z

    .prologue
    .line 106
    invoke-super {p0, p1}, Lcom/google/api/client/http/AbstractInputStreamContent;->setCloseInputStream(Z)Lcom/google/api/client/http/AbstractInputStreamContent;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/InputStreamContent;

    return-object v0
.end method

.method public final setLength(J)Lcom/google/api/client/http/InputStreamContent;
    .registers 4
    .param p1, "length"    # J

    .prologue
    .line 119
    iput-wide p1, p0, Lcom/google/api/client/http/InputStreamContent;->length:J

    .line 120
    return-object p0
.end method

.method public final setRetrySupported(Z)Lcom/google/api/client/http/InputStreamContent;
    .registers 2
    .param p1, "retrySupported"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/google/api/client/http/InputStreamContent;->retrySupported:Z

    .line 91
    return-object p0
.end method

.method public final bridge synthetic setType(Ljava/lang/String;)Lcom/google/api/client/http/AbstractInputStreamContent;
    .registers 3
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/InputStreamContent;->setType(Ljava/lang/String;)Lcom/google/api/client/http/InputStreamContent;

    move-result-object v0

    return-object v0
.end method

.method public final setType(Ljava/lang/String;)Lcom/google/api/client/http/InputStreamContent;
    .registers 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/google/api/client/http/AbstractInputStreamContent;->setType(Ljava/lang/String;)Lcom/google/api/client/http/AbstractInputStreamContent;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/InputStreamContent;

    return-object v0
.end method
