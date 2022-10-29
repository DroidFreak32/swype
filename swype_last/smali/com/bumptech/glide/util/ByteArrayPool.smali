.class public final Lcom/bumptech/glide/util/ByteArrayPool;
.super Ljava/lang/Object;
.source "ByteArrayPool.java"


# static fields
.field private static final BYTE_ARRAY_POOL:Lcom/bumptech/glide/util/ByteArrayPool;


# instance fields
.field private final tempQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    new-instance v0, Lcom/bumptech/glide/util/ByteArrayPool;

    invoke-direct {v0}, Lcom/bumptech/glide/util/ByteArrayPool;-><init>()V

    sput-object v0, Lcom/bumptech/glide/util/ByteArrayPool;->BYTE_ARRAY_POOL:Lcom/bumptech/glide/util/ByteArrayPool;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/bumptech/glide/util/Util;->createQueue(I)Ljava/util/Queue;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/util/ByteArrayPool;->tempQueue:Ljava/util/Queue;

    .line 28
    return-void
.end method

.method public static get()Lcom/bumptech/glide/util/ByteArrayPool;
    .registers 1

    .prologue
    .line 25
    sget-object v0, Lcom/bumptech/glide/util/ByteArrayPool;->BYTE_ARRAY_POOL:Lcom/bumptech/glide/util/ByteArrayPool;

    return-object v0
.end method


# virtual methods
.method public final getBytes()[B
    .registers 4

    .prologue
    .line 45
    iget-object v2, p0, Lcom/bumptech/glide/util/ByteArrayPool;->tempQueue:Ljava/util/Queue;

    monitor-enter v2

    .line 46
    :try_start_3
    iget-object v1, p0, Lcom/bumptech/glide/util/ByteArrayPool;->tempQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 47
    .local v0, "result":[B
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_1a

    .line 48
    if-nez v0, :cond_19

    .line 49
    const/high16 v1, 0x10000

    new-array v0, v1, [B

    .line 50
    const-string/jumbo v1, "ByteArrayPool"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 54
    :cond_19
    return-object v0

    .line 47
    .end local v0    # "result":[B
    :catchall_1a
    move-exception v1

    :try_start_1b
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public final releaseBytes([B)Z
    .registers 6
    .param p1, "bytes"    # [B

    .prologue
    .line 64
    array-length v1, p1

    const/high16 v2, 0x10000

    if-eq v1, v2, :cond_7

    .line 65
    const/4 v0, 0x0

    .line 75
    :goto_6
    return v0

    .line 68
    :cond_7
    const/4 v0, 0x0

    .line 69
    .local v0, "accepted":Z
    iget-object v2, p0, Lcom/bumptech/glide/util/ByteArrayPool;->tempQueue:Ljava/util/Queue;

    monitor-enter v2

    .line 70
    :try_start_b
    iget-object v1, p0, Lcom/bumptech/glide/util/ByteArrayPool;->tempQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    const/16 v3, 0x20

    if-ge v1, v3, :cond_1b

    .line 71
    const/4 v0, 0x1

    .line 72
    iget-object v1, p0, Lcom/bumptech/glide/util/ByteArrayPool;->tempQueue:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 74
    :cond_1b
    monitor-exit v2

    goto :goto_6

    :catchall_1d
    move-exception v1

    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_b .. :try_end_1f} :catchall_1d

    throw v1
.end method
