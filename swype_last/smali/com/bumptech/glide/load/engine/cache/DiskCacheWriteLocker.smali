.class final Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;
.super Ljava/lang/Object;
.source "DiskCacheWriteLocker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool;,
        Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;
    }
.end annotation


# instance fields
.field final locks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/bumptech/glide/load/Key;",
            "Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;",
            ">;"
        }
    .end annotation
.end field

.field final writeLockPool:Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool;


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;->locks:Ljava/util/Map;

    .line 22
    new-instance v0, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool;-><init>(B)V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;->writeLockPool:Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool;

    .line 68
    return-void
.end method


# virtual methods
.method final release(Lcom/bumptech/glide/load/Key;)V
    .registers 8
    .param p1, "key"    # Lcom/bumptech/glide/load/Key;

    .prologue
    .line 40
    monitor-enter p0

    .line 41
    :try_start_1
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;->locks:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;

    .line 42
    .local v1, "writeLock":Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;
    if-eqz v1, :cond_f

    iget v2, v1, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;->interestedThreads:I

    if-gtz v2, :cond_39

    .line 43
    :cond_f
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Cannot release a lock that is not held, key: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", interestedThreads: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v1, :cond_36

    const/4 v2, 0x0

    :goto_27
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 58
    .end local v1    # "writeLock":Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;
    :catchall_33
    move-exception v2

    monitor-exit p0
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_33

    throw v2

    .line 43
    .restart local v1    # "writeLock":Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;
    :cond_36
    :try_start_36
    iget v2, v1, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;->interestedThreads:I

    goto :goto_27

    .line 48
    :cond_39
    iget v2, v1, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;->interestedThreads:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;->interestedThreads:I

    if-nez v2, :cond_90

    .line 49
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;->locks:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;

    .line 50
    .local v0, "removed":Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7b

    .line 51
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Removed the wrong lock, expected to remove: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", but actually removed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 56
    :cond_7b
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;->writeLockPool:Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool;

    .line 1084
    iget-object v3, v2, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool;->pool:Ljava/util/Queue;

    monitor-enter v3
    :try_end_80
    .catchall {:try_start_36 .. :try_end_80} :catchall_33

    .line 1085
    :try_start_80
    iget-object v4, v2, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool;->pool:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->size()I

    move-result v4

    const/16 v5, 0xa

    if-ge v4, v5, :cond_8f

    .line 1086
    iget-object v2, v2, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool;->pool:Ljava/util/Queue;

    invoke-interface {v2, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 1088
    :cond_8f
    monitor-exit v3
    :try_end_90
    .catchall {:try_start_80 .. :try_end_90} :catchall_97

    .line 58
    .end local v0    # "removed":Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;
    :cond_90
    :try_start_90
    monitor-exit p0
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_33

    .line 60
    iget-object v2, v1, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 61
    return-void

    .line 1088
    .restart local v0    # "removed":Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;
    :catchall_97
    move-exception v2

    :try_start_98
    monitor-exit v3
    :try_end_99
    .catchall {:try_start_98 .. :try_end_99} :catchall_97

    :try_start_99
    throw v2
    :try_end_9a
    .catchall {:try_start_99 .. :try_end_9a} :catchall_33
.end method
