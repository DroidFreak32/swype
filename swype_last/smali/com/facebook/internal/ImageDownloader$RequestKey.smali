.class Lcom/facebook/internal/ImageDownloader$RequestKey;
.super Ljava/lang/Object;
.source "ImageDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/ImageDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestKey"
.end annotation


# static fields
.field private static final HASH_MULTIPLIER:I = 0x25

.field private static final HASH_SEED:I = 0x1d


# instance fields
.field tag:Ljava/lang/Object;

.field uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/net/Uri;Ljava/lang/Object;)V
    .registers 3
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "tag"    # Ljava/lang/Object;

    .prologue
    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    iput-object p1, p0, Lcom/facebook/internal/ImageDownloader$RequestKey;->uri:Landroid/net/Uri;

    .line 319
    iput-object p2, p0, Lcom/facebook/internal/ImageDownloader$RequestKey;->tag:Ljava/lang/Object;

    .line 320
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 334
    const/4 v1, 0x0

    .line 336
    .local v1, "isEqual":Z
    if-eqz p1, :cond_17

    instance-of v2, p1, Lcom/facebook/internal/ImageDownloader$RequestKey;

    if-eqz v2, :cond_17

    move-object v0, p1

    .line 337
    check-cast v0, Lcom/facebook/internal/ImageDownloader$RequestKey;

    .line 338
    .local v0, "compareTo":Lcom/facebook/internal/ImageDownloader$RequestKey;
    iget-object v2, v0, Lcom/facebook/internal/ImageDownloader$RequestKey;->uri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/facebook/internal/ImageDownloader$RequestKey;->uri:Landroid/net/Uri;

    if-ne v2, v3, :cond_18

    iget-object v2, v0, Lcom/facebook/internal/ImageDownloader$RequestKey;->tag:Ljava/lang/Object;

    iget-object v3, p0, Lcom/facebook/internal/ImageDownloader$RequestKey;->tag:Ljava/lang/Object;

    if-ne v2, v3, :cond_18

    const/4 v1, 0x1

    .line 341
    .end local v0    # "compareTo":Lcom/facebook/internal/ImageDownloader$RequestKey;
    :cond_17
    :goto_17
    return v1

    .line 338
    .restart local v0    # "compareTo":Lcom/facebook/internal/ImageDownloader$RequestKey;
    :cond_18
    const/4 v1, 0x0

    goto :goto_17
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 326
    iget-object v0, p0, Lcom/facebook/internal/ImageDownloader$RequestKey;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x431

    .line 327
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/facebook/internal/ImageDownloader$RequestKey;->tag:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 329
    return v0
.end method
