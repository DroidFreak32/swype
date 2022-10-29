.class final Lcom/bumptech/glide/load/model/AssetUriParser;
.super Ljava/lang/Object;
.source "AssetUriParser.java"


# static fields
.field private static final ASSET_PREFIX_LENGTH:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    const/16 v0, 0x16

    sput v0, Lcom/bumptech/glide/load/model/AssetUriParser;->ASSET_PREFIX_LENGTH:I

    return-void
.end method

.method public static isAssetUri(Landroid/net/Uri;)Z
    .registers 4
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v0, 0x0

    .line 22
    const-string/jumbo v1, "file"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2a

    const-string/jumbo v1, "android_asset"

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    const/4 v0, 0x1

    :cond_2a
    return v0
.end method

.method public static toAssetPath(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 34
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/bumptech/glide/load/model/AssetUriParser;->ASSET_PREFIX_LENGTH:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
