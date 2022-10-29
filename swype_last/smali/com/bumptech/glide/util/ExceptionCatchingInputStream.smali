.class public final Lcom/bumptech/glide/util/ExceptionCatchingInputStream;
.super Ljava/io/InputStream;
.source "ExceptionCatchingInputStream.java"


# static fields
.field private static final QUEUE:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/bumptech/glide/util/ExceptionCatchingInputStream;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public exception:Ljava/io/IOException;

.field private wrapped:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/bumptech/glide/util/Util;->createQueue(I)Ljava/util/Queue;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->QUEUE:Ljava/util/Queue;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 42
    return-void
.end method

.method public static obtain(Ljava/io/InputStream;)Lcom/bumptech/glide/util/ExceptionCatchingInputStream;
    .registers 4
    .param p0, "toWrap"    # Ljava/io/InputStream;

    .prologue
    .line 23
    sget-object v2, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->QUEUE:Ljava/util/Queue;

    monitor-enter v2

    .line 24
    :try_start_3
    sget-object v1, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->QUEUE:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;

    .line 25
    .local v0, "result":Lcom/bumptech/glide/util/ExceptionCatchingInputStream;
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_16

    .line 26
    if-nez v0, :cond_13

    .line 27
    new-instance v0, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;

    .end local v0    # "result":Lcom/bumptech/glide/util/ExceptionCatchingInputStream;
    invoke-direct {v0}, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;-><init>()V

    .line 1045
    .restart local v0    # "result":Lcom/bumptech/glide/util/ExceptionCatchingInputStream;
    :cond_13
    iput-object p0, v0, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->wrapped:Ljava/io/InputStream;

    .line 30
    return-object v0

    .line 25
    .end local v0    # "result":Lcom/bumptech/glide/util/ExceptionCatchingInputStream;
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v1
.end method


# virtual methods
.method public final available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->wrapped:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public final close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->wrapped:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 56
    return-void
.end method

.method public final mark(I)V
    .registers 3
    .param p1, "readlimit"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->wrapped:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 61
    return-void
.end method

.method public final markSupported()Z
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->wrapped:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public final read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    :try_start_0
    iget-object v2, p0, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->wrapped:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 118
    .local v1, "result":I
    :goto_6
    return v1

    .line 114
    .end local v1    # "result":I
    :catch_7
    move-exception v0

    .line 115
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->exception:Ljava/io/IOException;

    .line 116
    const/4 v1, -0x1

    .restart local v1    # "result":I
    goto :goto_6
.end method

.method public final read([B)I
    .registers 5
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    :try_start_0
    iget-object v2, p0, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->wrapped:Ljava/io/InputStream;

    invoke-virtual {v2, p1}, Ljava/io/InputStream;->read([B)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 77
    .local v1, "read":I
    :goto_6
    return v1

    .line 73
    .end local v1    # "read":I
    :catch_7
    move-exception v0

    .line 74
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->exception:Ljava/io/IOException;

    .line 75
    const/4 v1, -0x1

    .restart local v1    # "read":I
    goto :goto_6
.end method

.method public final read([BII)I
    .registers 7
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    :try_start_0
    iget-object v2, p0, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->wrapped:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 89
    .local v1, "read":I
    :goto_6
    return v1

    .line 85
    .end local v1    # "read":I
    :catch_7
    move-exception v0

    .line 86
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->exception:Ljava/io/IOException;

    .line 87
    const/4 v1, -0x1

    .restart local v1    # "read":I
    goto :goto_6
.end method

.method public final release()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 126
    iput-object v0, p0, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->exception:Ljava/io/IOException;

    .line 127
    iput-object v0, p0, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->wrapped:Ljava/io/InputStream;

    .line 128
    sget-object v1, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->QUEUE:Ljava/util/Queue;

    monitor-enter v1

    .line 129
    :try_start_8
    sget-object v0, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->QUEUE:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 130
    monitor-exit v1

    return-void

    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public final declared-synchronized reset()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->wrapped:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 95
    monitor-exit p0

    return-void

    .line 94
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final skip(J)J
    .registers 8
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->wrapped:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2}, Ljava/io/InputStream;->skip(J)J
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-wide v2

    .line 106
    .local v2, "skipped":J
    :goto_6
    return-wide v2

    .line 102
    .end local v2    # "skipped":J
    :catch_7
    move-exception v0

    .line 103
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->exception:Ljava/io/IOException;

    .line 104
    const-wide/16 v2, 0x0

    .restart local v2    # "skipped":J
    goto :goto_6
.end method
