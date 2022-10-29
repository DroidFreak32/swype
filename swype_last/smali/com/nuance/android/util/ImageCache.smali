.class public Lcom/nuance/android/util/ImageCache;
.super Ljava/lang/Object;
.source "ImageCache.java"


# static fields
.field private static final log:Lcom/nuance/swype/util/LogManager$Log;

.field private static volatile singleton:Lcom/nuance/android/util/ImageCache;


# instance fields
.field private final mRequestManager:Lcom/bumptech/glide/RequestManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/nuance/android/util/ImageCache;->singleton:Lcom/nuance/android/util/ImageCache;

    .line 16
    const-string/jumbo v0, "ImageCache"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/android/util/ImageCache;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/android/util/ImageCache;->mRequestManager:Lcom/bumptech/glide/RequestManager;

    .line 31
    return-void
.end method

.method public static with(Landroid/content/Context;)Lcom/nuance/android/util/ImageCache;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    sget-object v0, Lcom/nuance/android/util/ImageCache;->singleton:Lcom/nuance/android/util/ImageCache;

    if-nez v0, :cond_13

    .line 20
    const-class v1, Lcom/nuance/android/util/ImageCache;

    monitor-enter v1

    .line 21
    :try_start_7
    sget-object v0, Lcom/nuance/android/util/ImageCache;->singleton:Lcom/nuance/android/util/ImageCache;

    if-nez v0, :cond_12

    .line 22
    new-instance v0, Lcom/nuance/android/util/ImageCache;

    invoke-direct {v0, p0}, Lcom/nuance/android/util/ImageCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/nuance/android/util/ImageCache;->singleton:Lcom/nuance/android/util/ImageCache;

    .line 24
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 26
    :cond_13
    sget-object v0, Lcom/nuance/android/util/ImageCache;->singleton:Lcom/nuance/android/util/ImageCache;

    return-object v0

    .line 24
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public final loadImage(IILcom/nuance/swype/util/drawable/ImageViewWrapper;)V
    .registers 7
    .param p1, "resourceId"    # I
    .param p2, "placeHolderResId"    # I
    .param p3, "target"    # Lcom/nuance/swype/util/drawable/ImageViewWrapper;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/nuance/android/util/ImageCache;->mRequestManager:Lcom/bumptech/glide/RequestManager;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1492
    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestManager;->loadGeneric(Ljava/lang/Class;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v2

    iget-object v0, v0, Lcom/bumptech/glide/RequestManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/signature/ApplicationVersionSignature;->obtain(Landroid/content/Context;)Lcom/bumptech/glide/load/Key;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/DrawableTypeRequest;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/DrawableTypeRequest;

    .line 1466
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->load(Ljava/lang/Object;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/DrawableTypeRequest;

    .line 41
    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->RESULT:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/bumptech/glide/DrawableRequestBuilder;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->dontAnimate()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 42
    return-void
.end method

.method public final loadImage(Ljava/lang/String;ILcom/nuance/swype/util/drawable/ImageViewWrapper;)V
    .registers 9
    .param p1, "imagePath"    # Ljava/lang/String;
    .param p2, "placeHolderResId"    # I
    .param p3, "target"    # Lcom/nuance/swype/util/drawable/ImageViewWrapper;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/nuance/android/util/ImageCache;->mRequestManager:Lcom/bumptech/glide/RequestManager;

    .line 1304
    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->loadGeneric(Ljava/lang/Class;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    .line 1284
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/DrawableTypeRequest;->load(Ljava/lang/Object;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/DrawableTypeRequest;

    .line 35
    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->RESULT:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/bumptech/glide/DrawableRequestBuilder;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->dontAnimate()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    invoke-virtual {p3}, Lcom/nuance/swype/util/drawable/ImageViewWrapper;->getWrapperImageWidth()I

    move-result v1

    invoke-virtual {p3}, Lcom/nuance/swype/util/drawable/ImageViewWrapper;->getWrapperImageHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->override(II)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 36
    sget-object v0, Lcom/nuance/android/util/ImageCache;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "loadImage  imageWidth="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/nuance/swype/util/drawable/ImageViewWrapper;->getWrapperImageWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " imageHeight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Lcom/nuance/swype/util/drawable/ImageViewWrapper;->getWrapperImageHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 37
    return-void
.end method
