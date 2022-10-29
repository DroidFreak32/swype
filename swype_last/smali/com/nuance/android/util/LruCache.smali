.class public Lcom/nuance/android/util/LruCache;
.super Ljava/lang/Object;
.source "LruCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private createCount:I

.field private evictionCount:I

.field private hitCount:I

.field private final map:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private maxSize:I

.field private missCount:I

.field private putCount:I

.field private size:I


# direct methods
.method public constructor <init>(I)V
    .registers 6
    .param p1, "maxSize"    # I

    .prologue
    .line 46
    .local p0, "this":Lcom/nuance/android/util/LruCache;, "Lcom/nuance/android/util/LruCache<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    if-gtz p1, :cond_e

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_e
    iput p1, p0, Lcom/nuance/android/util/LruCache;->maxSize:I

    .line 51
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/nuance/android/util/LruCache;->map:Ljava/util/LinkedHashMap;

    .line 52
    return-void
.end method

.method private safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    .prologue
    .line 229
    .local p0, "this":Lcom/nuance/android/util/LruCache;, "Lcom/nuance/android/util/LruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1, p2}, Lcom/nuance/android/util/LruCache;->sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 230
    .local v0, "result":I
    if-gez v0, :cond_27

    .line 231
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Negative size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 233
    :cond_27
    return v0
.end method

.method private trimToSize(I)V
    .registers 8
    .param p1, "maxSize"    # I

    .prologue
    .line 145
    .local p0, "this":Lcom/nuance/android/util/LruCache;, "Lcom/nuance/android/util/LruCache<TK;TV;>;"
    :goto_0
    monitor-enter p0

    .line 146
    :try_start_1
    iget v3, p0, Lcom/nuance/android/util/LruCache;->size:I

    if-ltz v3, :cond_11

    iget-object v3, p0, Lcom/nuance/android/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_36

    iget v3, p0, Lcom/nuance/android/util/LruCache;->size:I

    if-eqz v3, :cond_36

    .line 147
    :cond_11
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".sizeOf() is reporting inconsistent results!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 161
    :catchall_33
    move-exception v3

    monitor-exit p0
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_33

    throw v3

    .line 151
    :cond_36
    :try_start_36
    iget v3, p0, Lcom/nuance/android/util/LruCache;->size:I

    if-le v3, p1, :cond_42

    iget-object v3, p0, Lcom/nuance/android/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_44

    .line 152
    :cond_42
    monitor-exit p0

    return-void

    .line 155
    :cond_44
    iget-object v3, p0, Lcom/nuance/android/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 156
    .local v1, "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 157
    .local v0, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 158
    .local v2, "value":Ljava/lang/Object;, "TV;"
    iget-object v3, p0, Lcom/nuance/android/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget v3, p0, Lcom/nuance/android/util/LruCache;->size:I

    invoke-direct {p0, v0, v2}, Lcom/nuance/android/util/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/nuance/android/util/LruCache;->size:I

    .line 160
    iget v3, p0, Lcom/nuance/android/util/LruCache;->evictionCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/nuance/android/util/LruCache;->evictionCount:I

    .line 161
    monitor-exit p0
    :try_end_71
    .catchall {:try_start_36 .. :try_end_71} :catchall_33

    .line 163
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v0, v2, v4}, Lcom/nuance/android/util/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected create(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 225
    .local p0, "this":Lcom/nuance/android/util/LruCache;, "Lcom/nuance/android/util/LruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized createCount()I
    .registers 2

    .prologue
    .line 291
    .local p0, "this":Lcom/nuance/android/util/LruCache;, "Lcom/nuance/android/util/LruCache<TK;TV;>;"
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/nuance/android/util/LruCache;->createCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .param p1, "evicted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTK;TV;TV;)V"
        }
    .end annotation

    .prologue
    .line 207
    .local p0, "this":Lcom/nuance/android/util/LruCache;, "Lcom/nuance/android/util/LruCache<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "oldValue":Ljava/lang/Object;, "TV;"
    .local p4, "newValue":Ljava/lang/Object;, "TV;"
    return-void
.end method

.method public final evictAll()V
    .registers 2

    .prologue
    .line 251
    .local p0, "this":Lcom/nuance/android/util/LruCache;, "Lcom/nuance/android/util/LruCache<TK;TV;>;"
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/nuance/android/util/LruCache;->trimToSize(I)V

    .line 252
    return-void
.end method

.method public final declared-synchronized evictionCount()I
    .registers 2

    .prologue
    .line 305
    .local p0, "this":Lcom/nuance/android/util/LruCache;, "Lcom/nuance/android/util/LruCache<TK;TV;>;"
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/nuance/android/util/LruCache;->evictionCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lcom/nuance/android/util/LruCache;, "Lcom/nuance/android/util/LruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    if-nez p1, :cond_b

    .line 62
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "key == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 66
    :cond_b
    monitor-enter p0

    .line 67
    :try_start_c
    iget-object v2, p0, Lcom/nuance/android/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 68
    .local v1, "mapValue":Ljava/lang/Object;, "TV;"
    if-eqz v1, :cond_1d

    .line 69
    iget v2, p0, Lcom/nuance/android/util/LruCache;->hitCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/nuance/android/util/LruCache;->hitCount:I

    .line 70
    monitor-exit p0

    move-object v0, v1

    .line 104
    :goto_1c
    return-object v0

    .line 72
    :cond_1d
    iget v2, p0, Lcom/nuance/android/util/LruCache;->missCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/nuance/android/util/LruCache;->missCount:I

    .line 73
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 82
    invoke-virtual {p0, p1}, Lcom/nuance/android/util/LruCache;->create(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 83
    .local v0, "createdValue":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_2f

    .line 84
    const/4 v0, 0x0

    goto :goto_1c

    .line 73
    .end local v0    # "createdValue":Ljava/lang/Object;, "TV;"
    .end local v1    # "mapValue":Ljava/lang/Object;, "TV;"
    :catchall_2c
    move-exception v2

    :try_start_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v2

    .line 87
    .restart local v0    # "createdValue":Ljava/lang/Object;, "TV;"
    .restart local v1    # "mapValue":Ljava/lang/Object;, "TV;"
    :cond_2f
    monitor-enter p0

    .line 88
    :try_start_30
    iget v2, p0, Lcom/nuance/android/util/LruCache;->createCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/nuance/android/util/LruCache;->createCount:I

    .line 89
    iget-object v2, p0, Lcom/nuance/android/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 91
    if-eqz v1, :cond_4c

    .line 93
    iget-object v2, p0, Lcom/nuance/android/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :goto_43
    monitor-exit p0
    :try_end_44
    .catchall {:try_start_30 .. :try_end_44} :catchall_56

    .line 99
    if-eqz v1, :cond_59

    .line 100
    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/nuance/android/util/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    .line 101
    goto :goto_1c

    .line 95
    :cond_4c
    :try_start_4c
    iget v2, p0, Lcom/nuance/android/util/LruCache;->size:I

    invoke-direct {p0, p1, v0}, Lcom/nuance/android/util/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/nuance/android/util/LruCache;->size:I

    goto :goto_43

    .line 97
    :catchall_56
    move-exception v2

    monitor-exit p0
    :try_end_58
    .catchall {:try_start_4c .. :try_end_58} :catchall_56

    throw v2

    .line 103
    :cond_59
    iget v2, p0, Lcom/nuance/android/util/LruCache;->maxSize:I

    invoke-direct {p0, v2}, Lcom/nuance/android/util/LruCache;->trimToSize(I)V

    goto :goto_1c
.end method

.method public final declared-synchronized hitCount()I
    .registers 2

    .prologue
    .line 276
    .local p0, "this":Lcom/nuance/android/util/LruCache;, "Lcom/nuance/android/util/LruCache<TK;TV;>;"
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/nuance/android/util/LruCache;->hitCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized maxSize()I
    .registers 2

    .prologue
    .line 269
    .local p0, "this":Lcom/nuance/android/util/LruCache;, "Lcom/nuance/android/util/LruCache<TK;TV;>;"
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/nuance/android/util/LruCache;->maxSize:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized missCount()I
    .registers 2

    .prologue
    .line 284
    .local p0, "this":Lcom/nuance/android/util/LruCache;, "Lcom/nuance/android/util/LruCache<TK;TV;>;"
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/nuance/android/util/LruCache;->missCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "this":Lcom/nuance/android/util/LruCache;, "Lcom/nuance/android/util/LruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_4

    if-nez p2, :cond_d

    .line 116
    :cond_4
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "key == null || value == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 120
    :cond_d
    monitor-enter p0

    .line 121
    :try_start_e
    iget v1, p0, Lcom/nuance/android/util/LruCache;->putCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/nuance/android/util/LruCache;->putCount:I

    .line 122
    iget v1, p0, Lcom/nuance/android/util/LruCache;->size:I

    invoke-direct {p0, p1, p2}, Lcom/nuance/android/util/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/nuance/android/util/LruCache;->size:I

    .line 123
    iget-object v1, p0, Lcom/nuance/android/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 124
    .local v0, "previous":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_2e

    .line 125
    iget v1, p0, Lcom/nuance/android/util/LruCache;->size:I

    invoke-direct {p0, p1, v0}, Lcom/nuance/android/util/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/nuance/android/util/LruCache;->size:I

    .line 127
    :cond_2e
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_e .. :try_end_2f} :catchall_3b

    .line 129
    if-eqz v0, :cond_35

    .line 130
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0, p2}, Lcom/nuance/android/util/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 133
    :cond_35
    iget v1, p0, Lcom/nuance/android/util/LruCache;->maxSize:I

    invoke-direct {p0, v1}, Lcom/nuance/android/util/LruCache;->trimToSize(I)V

    .line 134
    return-object v0

    .line 127
    .end local v0    # "previous":Ljava/lang/Object;, "TV;"
    :catchall_3b
    move-exception v1

    :try_start_3c
    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method public final declared-synchronized putCount()I
    .registers 2

    .prologue
    .line 298
    .local p0, "this":Lcom/nuance/android/util/LruCache;, "Lcom/nuance/android/util/LruCache<TK;TV;>;"
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/nuance/android/util/LruCache;->putCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 173
    .local p0, "this":Lcom/nuance/android/util/LruCache;, "Lcom/nuance/android/util/LruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    if-nez p1, :cond_b

    .line 174
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "key == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 178
    :cond_b
    monitor-enter p0

    .line 179
    :try_start_c
    iget-object v1, p0, Lcom/nuance/android/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 180
    .local v0, "previous":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_1d

    .line 181
    iget v1, p0, Lcom/nuance/android/util/LruCache;->size:I

    invoke-direct {p0, p1, v0}, Lcom/nuance/android/util/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/nuance/android/util/LruCache;->size:I

    .line 183
    :cond_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_c .. :try_end_1e} :catchall_26

    .line 185
    if-eqz v0, :cond_25

    .line 186
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/nuance/android/util/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 189
    :cond_25
    return-object v0

    .line 183
    .end local v0    # "previous":Ljava/lang/Object;, "TV;"
    :catchall_26
    move-exception v1

    :try_start_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v1
.end method

.method public final declared-synchronized size()I
    .registers 2

    .prologue
    .line 260
    .local p0, "this":Lcom/nuance/android/util/LruCache;, "Lcom/nuance/android/util/LruCache<TK;TV;>;"
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/nuance/android/util/LruCache;->size:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    .prologue
    .line 244
    .local p0, "this":Lcom/nuance/android/util/LruCache;, "Lcom/nuance/android/util/LruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x1

    return v0
.end method

.method public final declared-synchronized snapshot()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 313
    .local p0, "this":Lcom/nuance/android/util/LruCache;, "Lcom/nuance/android/util/LruCache<TK;TV;>;"
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/nuance/android/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-object v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 318
    .local p0, "this":Lcom/nuance/android/util/LruCache;, "Lcom/nuance/android/util/LruCache<TK;TV;>;"
    monitor-enter p0

    :try_start_1
    iget v2, p0, Lcom/nuance/android/util/LruCache;->hitCount:I

    iget v3, p0, Lcom/nuance/android/util/LruCache;->missCount:I

    add-int v0, v2, v3

    .line 319
    .local v0, "accesses":I
    if-eqz v0, :cond_48

    iget v2, p0, Lcom/nuance/android/util/LruCache;->hitCount:I

    mul-int/lit8 v2, v2, 0x64

    div-int v1, v2, v0

    .line 320
    .local v1, "hitPercent":I
    :goto_f
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "LruCache: maxSize="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/nuance/android/util/LruCache;->maxSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " hits="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/nuance/android/util/LruCache;->hitCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " misses="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/nuance/android/util/LruCache;->missCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " hitRate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_45
    .catchall {:try_start_1 .. :try_end_45} :catchall_4a

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 319
    .end local v1    # "hitPercent":I
    :cond_48
    const/4 v1, 0x0

    goto :goto_f

    .line 318
    .end local v0    # "accesses":I
    :catchall_4a
    move-exception v2

    monitor-exit p0

    throw v2
.end method
