.class public Lcom/bumptech/glide/load/model/UrlLoader;
.super Ljava/lang/Object;
.source "UrlLoader.java"

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
        "Ljava/net/URL;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final glideUrlLoader:Lcom/bumptech/glide/load/model/ModelLoader;
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
.method public constructor <init>(Lcom/bumptech/glide/load/model/ModelLoader;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<",
            "Lcom/bumptech/glide/load/model/GlideUrl;",
            "TT;>;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p0, "this":Lcom/bumptech/glide/load/model/UrlLoader;, "Lcom/bumptech/glide/load/model/UrlLoader<TT;>;"
    .local p1, "glideUrlLoader":Lcom/bumptech/glide/load/model/ModelLoader;, "Lcom/bumptech/glide/load/model/ModelLoader<Lcom/bumptech/glide/load/model/GlideUrl;TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/bumptech/glide/load/model/UrlLoader;->glideUrlLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    .line 19
    return-void
.end method


# virtual methods
.method public final bridge synthetic getResourceFetcher(Ljava/lang/Object;II)Lcom/bumptech/glide/load/data/DataFetcher;
    .registers 6
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # I
    .param p3, "x2"    # I

    .prologue
    .line 14
    .local p0, "this":Lcom/bumptech/glide/load/model/UrlLoader;, "Lcom/bumptech/glide/load/model/UrlLoader<TT;>;"
    check-cast p1, Ljava/net/URL;

    .line 1023
    .end local p1    # "x0":Ljava/lang/Object;
    iget-object v0, p0, Lcom/bumptech/glide/load/model/UrlLoader;->glideUrlLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    new-instance v1, Lcom/bumptech/glide/load/model/GlideUrl;

    invoke-direct {v1, p1}, Lcom/bumptech/glide/load/model/GlideUrl;-><init>(Ljava/net/URL;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/bumptech/glide/load/model/ModelLoader;->getResourceFetcher(Ljava/lang/Object;II)Lcom/bumptech/glide/load/data/DataFetcher;

    move-result-object v0

    .line 14
    return-object v0
.end method
