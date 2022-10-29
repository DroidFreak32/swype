.class public final Lcom/bumptech/glide/load/model/StreamEncoder;
.super Ljava/lang/Object;
.source "StreamEncoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/Encoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/Encoder",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static encode(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    .registers 7
    .param p0, "data"    # Ljava/io/InputStream;
    .param p1, "os"    # Ljava/io/OutputStream;

    .prologue
    const/4 v2, 0x0

    .line 20
    invoke-static {}, Lcom/bumptech/glide/util/ByteArrayPool;->get()Lcom/bumptech/glide/util/ByteArrayPool;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bumptech/glide/util/ByteArrayPool;->getBytes()[B

    move-result-object v0

    .line 23
    .local v0, "buffer":[B
    :goto_9
    :try_start_9
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "read":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_25

    .line 24
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_14} :catch_15
    .catchall {:try_start_9 .. :try_end_14} :catchall_2e

    goto :goto_9

    .line 28
    .end local v1    # "read":I
    :catch_15
    move-exception v3

    :try_start_16
    const-string/jumbo v3, "StreamEncoder"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_2e

    .line 33
    invoke-static {}, Lcom/bumptech/glide/util/ByteArrayPool;->get()Lcom/bumptech/glide/util/ByteArrayPool;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/bumptech/glide/util/ByteArrayPool;->releaseBytes([B)Z

    :goto_24
    return v2

    .restart local v1    # "read":I
    :cond_25
    invoke-static {}, Lcom/bumptech/glide/util/ByteArrayPool;->get()Lcom/bumptech/glide/util/ByteArrayPool;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/util/ByteArrayPool;->releaseBytes([B)Z

    const/4 v2, 0x1

    goto :goto_24

    .end local v1    # "read":I
    :catchall_2e
    move-exception v2

    invoke-static {}, Lcom/bumptech/glide/util/ByteArrayPool;->get()Lcom/bumptech/glide/util/ByteArrayPool;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/bumptech/glide/util/ByteArrayPool;->releaseBytes([B)Z

    throw v2
.end method


# virtual methods
.method public final bridge synthetic encode(Ljava/lang/Object;Ljava/io/OutputStream;)Z
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/io/OutputStream;

    .prologue
    .line 15
    check-cast p1, Ljava/io/InputStream;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-static {p1, p2}, Lcom/bumptech/glide/load/model/StreamEncoder;->encode(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    move-result v0

    return v0
.end method

.method public final getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 39
    const-string/jumbo v0, ""

    return-object v0
.end method
