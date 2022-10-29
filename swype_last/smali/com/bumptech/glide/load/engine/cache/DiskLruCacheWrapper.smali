.class public final Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;
.super Ljava/lang/Object;
.source "DiskLruCacheWrapper.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/cache/DiskCache;


# static fields
.field private static wrapper:Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;


# instance fields
.field private final directory:Ljava/io/File;

.field private diskLruCache:Lcom/bumptech/glide/disklrucache/DiskLruCache;

.field private final maxSize:I

.field private final safeKeyGenerator:Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;

.field private final writeLocker:Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->wrapper:Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;I)V
    .registers 4
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "maxSize"    # I

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->writeLocker:Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;

    .line 52
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->directory:Ljava/io/File;

    .line 53
    iput p2, p0, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->maxSize:I

    .line 54
    new-instance v0, Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->safeKeyGenerator:Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;

    .line 55
    return-void
.end method

.method public static declared-synchronized get(Ljava/io/File;I)Lcom/bumptech/glide/load/engine/cache/DiskCache;
    .registers 4
    .param p0, "directory"    # Ljava/io/File;
    .param p1, "maxSize"    # I

    .prologue
    .line 45
    const-class v1, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->wrapper:Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;

    if-nez v0, :cond_e

    .line 46
    new-instance v0, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;

    invoke-direct {v0, p0, p1}, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;-><init>(Ljava/io/File;I)V

    sput-object v0, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->wrapper:Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;

    .line 48
    :cond_e
    sget-object v0, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->wrapper:Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 45
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized getDiskCache()Lcom/bumptech/glide/disklrucache/DiskLruCache;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->diskLruCache:Lcom/bumptech/glide/disklrucache/DiskLruCache;

    if-nez v0, :cond_10

    .line 59
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->directory:Ljava/io/File;

    iget v1, p0, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->maxSize:I

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->open$641e3723(Ljava/io/File;J)Lcom/bumptech/glide/disklrucache/DiskLruCache;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->diskLruCache:Lcom/bumptech/glide/disklrucache/DiskLruCache;

    .line 61
    :cond_10
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->diskLruCache:Lcom/bumptech/glide/disklrucache/DiskLruCache;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    monitor-exit p0

    return-object v0

    .line 58
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final delete(Lcom/bumptech/glide/load/Key;)V
    .registers 6
    .param p1, "key"    # Lcom/bumptech/glide/load/Key;

    .prologue
    .line 116
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->safeKeyGenerator:Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;

    invoke-virtual {v2, p1}, Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;->getSafeKey(Lcom/bumptech/glide/load/Key;)Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "safeKey":Ljava/lang/String;
    :try_start_6
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->getDiskCache()Lcom/bumptech/glide/disklrucache/DiskLruCache;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->remove(Ljava/lang/String;)Z
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_d} :catch_e

    .line 124
    :cond_d
    :goto_d
    return-void

    .line 119
    :catch_e
    move-exception v0

    .line 120
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "DiskLruCacheWrapper"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 121
    const-string/jumbo v2, "DiskLruCacheWrapper"

    const-string/jumbo v3, "Unable to delete from disk cache"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public final get(Lcom/bumptech/glide/load/Key;)Ljava/io/File;
    .registers 8
    .param p1, "key"    # Lcom/bumptech/glide/load/Key;

    .prologue
    .line 70
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->safeKeyGenerator:Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;

    invoke-virtual {v4, p1}, Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;->getSafeKey(Lcom/bumptech/glide/load/Key;)Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, "safeKey":Ljava/lang/String;
    const/4 v1, 0x0

    .line 76
    .local v1, "result":Ljava/io/File;
    :try_start_7
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->getDiskCache()Lcom/bumptech/glide/disklrucache/DiskLruCache;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->get(Ljava/lang/String;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;

    move-result-object v3

    .line 77
    .local v3, "value":Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;
    if-eqz v3, :cond_15

    .line 78
    invoke-virtual {v3}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;->getFile$54ec799f()Ljava/io/File;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_14} :catch_16

    move-result-object v1

    .line 85
    .end local v3    # "value":Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;
    :cond_15
    :goto_15
    return-object v1

    .line 80
    :catch_16
    move-exception v0

    .line 81
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v4, "DiskLruCacheWrapper"

    const/4 v5, 0x5

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 82
    const-string/jumbo v4, "DiskLruCacheWrapper"

    const-string/jumbo v5, "Unable to get from disk cache"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15
.end method

.method public final put(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/cache/DiskCache$Writer;)V
    .registers 10
    .param p1, "key"    # Lcom/bumptech/glide/load/Key;
    .param p2, "writer"    # Lcom/bumptech/glide/load/engine/cache/DiskCache$Writer;

    .prologue
    .line 90
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->safeKeyGenerator:Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;

    invoke-virtual {v4, p1}, Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;->getSafeKey(Lcom/bumptech/glide/load/Key;)Ljava/lang/String;

    move-result-object v3

    .line 91
    .local v3, "safeKey":Ljava/lang/String;
    iget-object v5, p0, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->writeLocker:Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;

    .line 1026
    monitor-enter v5

    .line 1027
    :try_start_9
    iget-object v4, v5, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;->locks:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;

    .line 1028
    if-nez v4, :cond_1e

    .line 1029
    iget-object v4, v5, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;->writeLockPool:Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool;

    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool;->obtain()Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;

    move-result-object v4

    .line 1030
    iget-object v6, v5, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;->locks:Ljava/util/Map;

    invoke-interface {v6, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1032
    :cond_1e
    iget v6, v4, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;->interestedThreads:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v4, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;->interestedThreads:I

    .line 1033
    monitor-exit v5
    :try_end_25
    .catchall {:try_start_9 .. :try_end_25} :catchall_4a

    .line 1035
    iget-object v4, v4, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 93
    :try_start_2a
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->getDiskCache()Lcom/bumptech/glide/disklrucache/DiskLruCache;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->edit(Ljava/lang/String;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_31} :catch_52
    .catchall {:try_start_2a .. :try_end_31} :catchall_6c

    move-result-object v1

    .line 95
    .local v1, "editor":Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    if-eqz v1, :cond_44

    .line 97
    :try_start_34
    invoke-virtual {v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->getFile$54ec799f()Ljava/io/File;

    move-result-object v2

    .line 98
    .local v2, "file":Ljava/io/File;
    invoke-interface {p2, v2}, Lcom/bumptech/glide/load/engine/cache/DiskCache$Writer;->write(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 99
    invoke-virtual {v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->commit()V
    :try_end_41
    .catchall {:try_start_34 .. :try_end_41} :catchall_4d

    .line 102
    :cond_41
    :try_start_41
    invoke-virtual {v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->abortUnlessCommitted()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_52
    .catchall {:try_start_41 .. :try_end_44} :catchall_6c

    .line 110
    .end local v2    # "file":Ljava/io/File;
    :cond_44
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->writeLocker:Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;

    invoke-virtual {v4, p1}, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;->release(Lcom/bumptech/glide/load/Key;)V

    .line 111
    .end local v1    # "editor":Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    :goto_49
    return-void

    .line 1033
    :catchall_4a
    move-exception v4

    :try_start_4b
    monitor-exit v5
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw v4

    .line 102
    .restart local v1    # "editor":Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    :catchall_4d
    move-exception v4

    :try_start_4e
    invoke-virtual {v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->abortUnlessCommitted()V

    throw v4
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_52} :catch_52
    .catchall {:try_start_4e .. :try_end_52} :catchall_6c

    .line 105
    .end local v1    # "editor":Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    :catch_52
    move-exception v0

    .line 106
    .local v0, "e":Ljava/io/IOException;
    :try_start_53
    const-string/jumbo v4, "DiskLruCacheWrapper"

    const/4 v5, 0x5

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_66

    .line 107
    const-string/jumbo v4, "DiskLruCacheWrapper"

    const-string/jumbo v5, "Unable to put to disk cache"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_66
    .catchall {:try_start_53 .. :try_end_66} :catchall_6c

    .line 110
    :cond_66
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->writeLocker:Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;

    invoke-virtual {v4, p1}, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;->release(Lcom/bumptech/glide/load/Key;)V

    goto :goto_49

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_6c
    move-exception v4

    iget-object v5, p0, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->writeLocker:Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;

    invoke-virtual {v5, p1}, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;->release(Lcom/bumptech/glide/load/Key;)V

    throw v4
.end method
