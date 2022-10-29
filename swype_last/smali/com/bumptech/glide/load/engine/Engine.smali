.class public final Lcom/bumptech/glide/load/engine/Engine;
.super Ljava/lang/Object;
.source "Engine.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/EngineJobListener;
.implements Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;
.implements Lcom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;,
        Lcom/bumptech/glide/load/engine/Engine$RefQueueIdleHandler;,
        Lcom/bumptech/glide/load/engine/Engine$ResourceWeakReference;,
        Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;,
        Lcom/bumptech/glide/load/engine/Engine$LoadStatus;
    }
.end annotation


# instance fields
.field public final activeResources:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/bumptech/glide/load/Key;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/bumptech/glide/load/engine/EngineResource",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field public final cache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

.field public final diskCacheProvider:Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;

.field public final engineJobFactory:Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;

.field public final jobs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/bumptech/glide/load/Key;",
            "Lcom/bumptech/glide/load/engine/EngineJob;",
            ">;"
        }
    .end annotation
.end field

.field private final keyFactory:Lcom/bumptech/glide/load/engine/EngineKeyFactory;

.field private final resourceRecycler:Lcom/bumptech/glide/load/engine/ResourceRecycler;

.field private resourceReferenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lcom/bumptech/glide/load/engine/EngineResource",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)V
    .registers 11
    .param p1, "memoryCache"    # Lcom/bumptech/glide/load/engine/cache/MemoryCache;
    .param p2, "diskCacheFactory"    # Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;
    .param p3, "diskCacheService"    # Ljava/util/concurrent/ExecutorService;
    .param p4, "sourceService"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 63
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/load/engine/Engine;-><init>(Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;B)V

    .line 64
    return-void
.end method

.method private constructor <init>(Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;B)V
    .registers 11
    .param p1, "cache"    # Lcom/bumptech/glide/load/engine/cache/MemoryCache;
    .param p2, "diskCacheFactory"    # Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;
    .param p3, "diskCacheService"    # Ljava/util/concurrent/ExecutorService;
    .param p4, "sourceService"    # Ljava/util/concurrent/ExecutorService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/cache/MemoryCache;",
            "Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/util/concurrent/ExecutorService;",
            "B)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p5, "jobs":B, "Ljava/util/Map<Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineJob;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/Engine;->cache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    .line 72
    new-instance v4, Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;

    invoke-direct {v4, p2}, Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;-><init>(Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;)V

    iput-object v4, p0, Lcom/bumptech/glide/load/engine/Engine;->diskCacheProvider:Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 77
    .local v0, "activeResources":Ljava/util/Map;, "Ljava/util/Map<Lcom/bumptech/glide/load/Key;Ljava/lang/ref/WeakReference<Lcom/bumptech/glide/load/engine/EngineResource<*>;>;>;"
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/Engine;->activeResources:Ljava/util/Map;

    .line 80
    new-instance v2, Lcom/bumptech/glide/load/engine/EngineKeyFactory;

    invoke-direct {v2}, Lcom/bumptech/glide/load/engine/EngineKeyFactory;-><init>()V

    .line 82
    .local v2, "keyFactory":Lcom/bumptech/glide/load/engine/EngineKeyFactory;
    iput-object v2, p0, Lcom/bumptech/glide/load/engine/Engine;->keyFactory:Lcom/bumptech/glide/load/engine/EngineKeyFactory;

    .line 85
    new-instance p5, Ljava/util/HashMap;

    .end local p5    # "jobs":B, "Ljava/util/Map<Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineJob;>;"
    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    .line 87
    .local p5, "jobs":Ljava/util/Map;, "Ljava/util/Map<Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineJob;>;"
    iput-object p5, p0, Lcom/bumptech/glide/load/engine/Engine;->jobs:Ljava/util/Map;

    .line 90
    new-instance v1, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;

    invoke-direct {v1, p3, p4, p0}, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;-><init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Lcom/bumptech/glide/load/engine/EngineJobListener;)V

    .line 92
    .local v1, "engineJobFactory":Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/Engine;->engineJobFactory:Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;

    .line 95
    new-instance v3, Lcom/bumptech/glide/load/engine/ResourceRecycler;

    invoke-direct {v3}, Lcom/bumptech/glide/load/engine/ResourceRecycler;-><init>()V

    .line 97
    .local v3, "resourceRecycler":Lcom/bumptech/glide/load/engine/ResourceRecycler;
    iput-object v3, p0, Lcom/bumptech/glide/load/engine/Engine;->resourceRecycler:Lcom/bumptech/glide/load/engine/ResourceRecycler;

    .line 99
    invoke-interface {p1, p0}, Lcom/bumptech/glide/load/engine/cache/MemoryCache;->setResourceRemovedListener(Lcom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;)V

    .line 100
    return-void
.end method

.method public static logWithTimeAndKey(Ljava/lang/String;JLcom/bumptech/glide/load/Key;)V
    .registers 9
    .param p0, "log"    # Ljava/lang/String;
    .param p1, "startTime"    # J
    .param p3, "key"    # Lcom/bumptech/glide/load/Key;

    .prologue
    .line 195
    const-string/jumbo v0, "Engine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms, key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    return-void
.end method


# virtual methods
.method public final getReferenceQueue()Ljava/lang/ref/ReferenceQueue;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lcom/bumptech/glide/load/engine/EngineResource",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 302
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine;->resourceReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    if-nez v0, :cond_1b

    .line 303
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/Engine;->resourceReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 304
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    .line 305
    new-instance v1, Lcom/bumptech/glide/load/engine/Engine$RefQueueIdleHandler;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/Engine;->activeResources:Ljava/util/Map;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/Engine;->resourceReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, v2, v3}, Lcom/bumptech/glide/load/engine/Engine$RefQueueIdleHandler;-><init>(Ljava/util/Map;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 307
    :cond_1b
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine;->resourceReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method public final onEngineJobCancelled(Lcom/bumptech/glide/load/engine/EngineJob;Lcom/bumptech/glide/load/Key;)V
    .registers 5
    .param p1, "engineJob"    # Lcom/bumptech/glide/load/engine/EngineJob;
    .param p2, "key"    # Lcom/bumptech/glide/load/Key;

    .prologue
    .line 273
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 274
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/Engine;->jobs:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/EngineJob;

    .line 275
    .local v0, "current":Lcom/bumptech/glide/load/engine/EngineJob;
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 276
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/Engine;->jobs:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    :cond_16
    return-void
.end method

.method public final onEngineJobComplete(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource;)V
    .registers 6
    .param p1, "key"    # Lcom/bumptech/glide/load/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            "Lcom/bumptech/glide/load/engine/EngineResource",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 258
    .local p2, "resource":Lcom/bumptech/glide/load/engine/EngineResource;, "Lcom/bumptech/glide/load/engine/EngineResource<*>;"
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 260
    if-eqz p2, :cond_1b

    .line 1034
    iput-object p1, p2, Lcom/bumptech/glide/load/engine/EngineResource;->key:Lcom/bumptech/glide/load/Key;

    .line 1035
    iput-object p0, p2, Lcom/bumptech/glide/load/engine/EngineResource;->listener:Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;

    .line 1039
    iget-boolean v0, p2, Lcom/bumptech/glide/load/engine/EngineResource;->isCacheable:Z

    .line 263
    if-eqz v0, :cond_1b

    .line 264
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine;->activeResources:Ljava/util/Map;

    new-instance v1, Lcom/bumptech/glide/load/engine/Engine$ResourceWeakReference;

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/Engine;->getReferenceQueue()Ljava/lang/ref/ReferenceQueue;

    move-result-object v2

    invoke-direct {v1, p1, p2, v2}, Lcom/bumptech/glide/load/engine/Engine$ResourceWeakReference;-><init>(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    :cond_1b
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine;->jobs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    return-void
.end method

.method public final onResourceReleased(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource;)V
    .registers 4
    .param p1, "cacheKey"    # Lcom/bumptech/glide/load/Key;
    .param p2, "resource"    # Lcom/bumptech/glide/load/engine/EngineResource;

    .prologue
    .line 288
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 289
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine;->activeResources:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2039
    iget-boolean v0, p2, Lcom/bumptech/glide/load/engine/EngineResource;->isCacheable:Z

    .line 290
    if-eqz v0, :cond_12

    .line 291
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine;->cache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    invoke-interface {v0, p1, p2}, Lcom/bumptech/glide/load/engine/cache/MemoryCache;->put(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;

    .line 295
    :goto_11
    return-void

    .line 293
    :cond_12
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine;->resourceRecycler:Lcom/bumptech/glide/load/engine/ResourceRecycler;

    invoke-virtual {v0, p2}, Lcom/bumptech/glide/load/engine/ResourceRecycler;->recycle(Lcom/bumptech/glide/load/engine/Resource;)V

    goto :goto_11
.end method

.method public final onResourceRemoved(Lcom/bumptech/glide/load/engine/Resource;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 282
    .local p1, "resource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<*>;"
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 283
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine;->resourceRecycler:Lcom/bumptech/glide/load/engine/ResourceRecycler;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/ResourceRecycler;->recycle(Lcom/bumptech/glide/load/engine/Resource;)V

    .line 284
    return-void
.end method
