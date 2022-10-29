.class public final Lcom/google/api/client/util/ByteStreams;
.super Ljava/lang/Object;
.source "ByteStreams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/util/ByteStreams$LimitedInputStream;
    }
.end annotation


# direct methods
.method public static read(Ljava/io/InputStream;[BII)I
    .registers 8
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    .line 1127
    invoke-static {p0}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2127
    invoke-static {p1}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    if-gez p3, :cond_11

    .line 177
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v3, "len is negative"

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 179
    :cond_11
    const/4 v1, 0x0

    .line 180
    .local v1, "total":I
    :goto_12
    if-ge v1, p3, :cond_21

    .line 181
    add-int v2, p2, v1

    sub-int v3, p3, v1

    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 182
    .local v0, "result":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_21

    .line 185
    add-int/2addr v1, v0

    .line 186
    goto :goto_12

    .line 187
    .end local v0    # "result":I
    :cond_21
    return v1
.end method
