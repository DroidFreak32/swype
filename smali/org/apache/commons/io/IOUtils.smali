.class public final Lorg/apache/commons/io/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 97
    sget-char v1, Ljava/io/File;->separatorChar:C

    .line 112
    new-instance v0, Ljava/io/StringWriter;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/io/StringWriter;-><init>(I)V

    .line 113
    .local v0, "buf":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 114
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 115
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 116
    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .locals 6
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 999
    const/16 v3, 0x1000

    new-array v3, v3, [B

    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {p0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-eq v2, v4, :cond_0

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v5, v4}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v4, v4

    add-long/2addr v0, v4

    goto :goto_0

    .line 1000
    .local v0, "count":J
    :cond_0
    const-wide/32 v4, 0x7fffffff

    cmp-long v3, v0, v4

    if-lez v3, :cond_1

    .line 1003
    :goto_1
    return v2

    :cond_1
    long-to-int v2, v0

    goto :goto_1
.end method
