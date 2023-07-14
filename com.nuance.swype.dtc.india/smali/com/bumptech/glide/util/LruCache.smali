.class public Lcom/bumptech/glide/util/LruCache;
.super Ljava/lang/Object;
.source "LruCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "Y:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final cache:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<TT;TY;>;"
        }
    .end annotation
.end field

.field public currentSize:I

.field private final initialMaxSize:I

.field private maxSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 4
    .param p1, "size"    # I

    .prologue
    .line 24
    .local p0, "this":Lcom/bumptech/glide/util/LruCache;, "Lcom/bumptech/glide/util/LruCache<TT;TY;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x64

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/bumptech/glide/util/LruCache;->cache:Ljava/util/LinkedHashMap;

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/bumptech/glide/util/LruCache;->currentSize:I

    .line 25
    iput p1, p0, Lcom/bumptech/glide/util/LruCache;->initialMaxSize:I

    .line 26
    iput p1, p0, Lcom/bumptech/glide/util/LruCache;->maxSize:I

    .line 27
    return-void
.end method

.method private evict()V
    .locals 1

    .prologue
    .line 167
    .local p0, "this":Lcom/bumptech/glide/util/LruCache;, "Lcom/bumptech/glide/util/LruCache<TT;TY;>;"
    iget v0, p0, Lcom/bumptech/glide/util/LruCache;->maxSize:I

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/util/LruCache;->trimToSize(I)V

    .line 168
    return-void
.end method


# virtual methods
.method public final clearMemory()V
    .locals 1

    .prologue
    .line 146
    .local p0, "this":Lcom/bumptech/glide/util/LruCache;, "Lcom/bumptech/glide/util/LruCache<TT;TY;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/util/LruCache;->trimToSize(I)V

    .line 147
    return-void
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TY;"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "this":Lcom/bumptech/glide/util/LruCache;, "Lcom/bumptech/glide/util/LruCache<TT;TY;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/bumptech/glide/util/LruCache;->cache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSize(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TY;)I"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lcom/bumptech/glide/util/LruCache;, "Lcom/bumptech/glide/util/LruCache<TT;TY;>;"
    .local p1, "item":Ljava/lang/Object;, "TY;"
    const/4 v0, 0x1

    return v0
.end method

.method public onItemEvicted(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TY;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lcom/bumptech/glide/util/LruCache;, "Lcom/bumptech/glide/util/LruCache<TT;TY;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    .local p2, "item":Ljava/lang/Object;, "TY;"
    return-void
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TY;)TY;"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "this":Lcom/bumptech/glide/util/LruCache;, "Lcom/bumptech/glide/util/LruCache<TT;TY;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    .local p2, "item":Ljava/lang/Object;, "TY;"
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/util/LruCache;->getSize(Ljava/lang/Object;)I

    move-result v1

    .line 111
    iget v2, p0, Lcom/bumptech/glide/util/LruCache;->maxSize:I

    if-lt v1, v2, :cond_0

    .line 112
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/util/LruCache;->onItemEvicted(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 113
    const/4 v0, 0x0

    .line 126
    :goto_0
    return-object v0

    .line 116
    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/util/LruCache;->cache:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 117
    .local v0, "result":Ljava/lang/Object;, "TY;"
    if-eqz p2, :cond_1

    .line 118
    iget v1, p0, Lcom/bumptech/glide/util/LruCache;->currentSize:I

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/util/LruCache;->getSize(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/bumptech/glide/util/LruCache;->currentSize:I

    .line 120
    :cond_1
    if-eqz v0, :cond_2

    .line 122
    iget v1, p0, Lcom/bumptech/glide/util/LruCache;->currentSize:I

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/util/LruCache;->getSize(Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/bumptech/glide/util/LruCache;->currentSize:I

    .line 124
    :cond_2
    invoke-direct {p0}, Lcom/bumptech/glide/util/LruCache;->evict()V

    goto :goto_0
.end method

.method public final setSizeMultiplier(F)V
    .locals 2
    .param p1, "multiplier"    # F

    .prologue
    .line 37
    .local p0, "this":Lcom/bumptech/glide/util/LruCache;, "Lcom/bumptech/glide/util/LruCache<TT;TY;>;"
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Multiplier must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    iget v0, p0, Lcom/bumptech/glide/util/LruCache;->initialMaxSize:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/bumptech/glide/util/LruCache;->maxSize:I

    .line 41
    invoke-direct {p0}, Lcom/bumptech/glide/util/LruCache;->evict()V

    .line 42
    return-void
.end method

.method public final trimToSize(I)V
    .locals 5
    .param p1, "size"    # I

    .prologue
    .line 156
    .local p0, "this":Lcom/bumptech/glide/util/LruCache;, "Lcom/bumptech/glide/util/LruCache<TT;TY;>;"
    :goto_0
    iget v3, p0, Lcom/bumptech/glide/util/LruCache;->currentSize:I

    if-le v3, p1, :cond_0

    .line 157
    iget-object v3, p0, Lcom/bumptech/glide/util/LruCache;->cache:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 158
    .local v1, "last":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;TY;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 159
    .local v2, "toRemove":Ljava/lang/Object;, "TY;"
    iget v3, p0, Lcom/bumptech/glide/util/LruCache;->currentSize:I

    invoke-virtual {p0, v2}, Lcom/bumptech/glide/util/LruCache;->getSize(Ljava/lang/Object;)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/bumptech/glide/util/LruCache;->currentSize:I

    .line 160
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 161
    .local v0, "key":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Lcom/bumptech/glide/util/LruCache;->cache:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-virtual {p0, v0, v2}, Lcom/bumptech/glide/util/LruCache;->onItemEvicted(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 164
    .end local v0    # "key":Ljava/lang/Object;, "TT;"
    .end local v1    # "last":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;TY;>;"
    .end local v2    # "toRemove":Ljava/lang/Object;, "TY;"
    :cond_0
    return-void
.end method
