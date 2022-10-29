.class public abstract Lcom/bumptech/glide/load/model/UriLoader;
.super Ljava/lang/Object;
.source "UriLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoader",
        "<",
        "Landroid/net/Uri;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final urlLoader:Lcom/bumptech/glide/load/model/ModelLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<",
            "Lcom/bumptech/glide/load/model/GlideUrl;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/model/ModelLoader;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<",
            "Lcom/bumptech/glide/load/model/GlideUrl;",
            "TT;>;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p0, "this":Lcom/bumptech/glide/load/model/UriLoader;, "Lcom/bumptech/glide/load/model/UriLoader<TT;>;"
    .local p2, "urlLoader":Lcom/bumptech/glide/load/model/ModelLoader;, "Lcom/bumptech/glide/load/model/ModelLoader<Lcom/bumptech/glide/load/model/GlideUrl;TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/bumptech/glide/load/model/UriLoader;->context:Landroid/content/Context;

    .line 22
    iput-object p2, p0, Lcom/bumptech/glide/load/model/UriLoader;->urlLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    .line 23
    return-void
.end method


# virtual methods
.method public abstract getAssetPathFetcher(Landroid/content/Context;Ljava/lang/String;)Lcom/bumptech/glide/load/data/DataFetcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lcom/bumptech/glide/load/data/DataFetcher",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract getLocalUriFetcher(Landroid/content/Context;Landroid/net/Uri;)Lcom/bumptech/glide/load/data/DataFetcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            ")",
            "Lcom/bumptech/glide/load/data/DataFetcher",
            "<TT;>;"
        }
    .end annotation
.end method

.method public final bridge synthetic getResourceFetcher(Ljava/lang/Object;II)Lcom/bumptech/glide/load/data/DataFetcher;
    .registers 7
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # I
    .param p3, "x2"    # I

    .prologue
    .line 16
    .local p0, "this":Lcom/bumptech/glide/load/model/UriLoader;, "Lcom/bumptech/glide/load/model/UriLoader<TT;>;"
    check-cast p1, Landroid/net/Uri;

    .line 1027
    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 1029
    const/4 v0, 0x0

    .line 1049
    const-string/jumbo v1, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    const-string/jumbo v1, "content"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    const-string/jumbo v1, "android.resource"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    :cond_22
    const/4 v1, 0x1

    .line 1030
    :goto_23
    if-eqz v1, :cond_3f

    .line 1031
    invoke-static {p1}, Lcom/bumptech/glide/load/model/AssetUriParser;->isAssetUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1032
    invoke-static {p1}, Lcom/bumptech/glide/load/model/AssetUriParser;->toAssetPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1033
    iget-object v1, p0, Lcom/bumptech/glide/load/model/UriLoader;->context:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Lcom/bumptech/glide/load/model/UriLoader;->getAssetPathFetcher(Landroid/content/Context;Ljava/lang/String;)Lcom/bumptech/glide/load/data/DataFetcher;

    move-result-object v0

    .line 16
    :cond_35
    :goto_35
    return-object v0

    .line 1049
    :cond_36
    const/4 v1, 0x0

    goto :goto_23

    .line 1035
    :cond_38
    iget-object v0, p0, Lcom/bumptech/glide/load/model/UriLoader;->context:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/bumptech/glide/load/model/UriLoader;->getLocalUriFetcher(Landroid/content/Context;Landroid/net/Uri;)Lcom/bumptech/glide/load/data/DataFetcher;

    move-result-object v0

    goto :goto_35

    .line 1037
    :cond_3f
    iget-object v1, p0, Lcom/bumptech/glide/load/model/UriLoader;->urlLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    if-eqz v1, :cond_35

    const-string/jumbo v1, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_55

    const-string/jumbo v1, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 1038
    :cond_55
    iget-object v0, p0, Lcom/bumptech/glide/load/model/UriLoader;->urlLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    new-instance v1, Lcom/bumptech/glide/load/model/GlideUrl;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bumptech/glide/load/model/GlideUrl;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/bumptech/glide/load/model/ModelLoader;->getResourceFetcher(Ljava/lang/Object;II)Lcom/bumptech/glide/load/data/DataFetcher;

    move-result-object v0

    goto :goto_35
.end method
