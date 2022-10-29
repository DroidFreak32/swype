.class public final Lcom/bumptech/glide/load/engine/cache/DiskCacheAdapter;
.super Ljava/lang/Object;
.source "DiskCacheAdapter.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/cache/DiskCache;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final delete(Lcom/bumptech/glide/load/Key;)V
    .registers 2
    .param p1, "key"    # Lcom/bumptech/glide/load/Key;

    .prologue
    .line 25
    return-void
.end method

.method public final get(Lcom/bumptech/glide/load/Key;)Ljava/io/File;
    .registers 3
    .param p1, "key"    # Lcom/bumptech/glide/load/Key;

    .prologue
    .line 14
    const/4 v0, 0x0

    return-object v0
.end method

.method public final put(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/cache/DiskCache$Writer;)V
    .registers 3
    .param p1, "key"    # Lcom/bumptech/glide/load/Key;
    .param p2, "writer"    # Lcom/bumptech/glide/load/engine/cache/DiskCache$Writer;

    .prologue
    .line 20
    return-void
.end method
