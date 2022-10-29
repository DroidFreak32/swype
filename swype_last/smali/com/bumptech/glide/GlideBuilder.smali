.class public final Lcom/bumptech/glide/GlideBuilder;
.super Ljava/lang/Object;
.source "GlideBuilder.java"


# instance fields
.field bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field final context:Landroid/content/Context;

.field public decodeFormat:Lcom/bumptech/glide/load/DecodeFormat;

.field diskCacheFactory:Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;

.field diskCacheService:Ljava/util/concurrent/ExecutorService;

.field engine:Lcom/bumptech/glide/load/engine/Engine;

.field memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

.field sourceService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/GlideBuilder;->context:Landroid/content/Context;

    .line 36
    return-void
.end method
