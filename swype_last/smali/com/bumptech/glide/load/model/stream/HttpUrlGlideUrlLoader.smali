.class public final Lcom/bumptech/glide/load/model/stream/HttpUrlGlideUrlLoader;
.super Ljava/lang/Object;
.source "HttpUrlGlideUrlLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/stream/StreamModelLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/model/stream/HttpUrlGlideUrlLoader$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/stream/StreamModelLoader",
        "<",
        "Lcom/bumptech/glide/load/model/GlideUrl;",
        ">;"
    }
.end annotation


# instance fields
.field private final modelCache:Lcom/bumptech/glide/load/model/ModelCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/ModelCache",
            "<",
            "Lcom/bumptech/glide/load/model/GlideUrl;",
            "Lcom/bumptech/glide/load/model/GlideUrl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/model/stream/HttpUrlGlideUrlLoader;-><init>(Lcom/bumptech/glide/load/model/ModelCache;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/model/ModelCache;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/ModelCache",
            "<",
            "Lcom/bumptech/glide/load/model/GlideUrl;",
            "Lcom/bumptech/glide/load/model/GlideUrl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "modelCache":Lcom/bumptech/glide/load/model/ModelCache;, "Lcom/bumptech/glide/load/model/ModelCache<Lcom/bumptech/glide/load/model/GlideUrl;Lcom/bumptech/glide/load/model/GlideUrl;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/bumptech/glide/load/model/stream/HttpUrlGlideUrlLoader;->modelCache:Lcom/bumptech/glide/load/model/ModelCache;

    .line 46
    return-void
.end method


# virtual methods
.method public final bridge synthetic getResourceFetcher(Ljava/lang/Object;II)Lcom/bumptech/glide/load/data/DataFetcher;
    .registers 6
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # I
    .param p3, "x2"    # I

    .prologue
    const/4 v1, 0x0

    .line 19
    check-cast p1, Lcom/bumptech/glide/load/model/GlideUrl;

    .line 1052
    .end local p1    # "x0":Ljava/lang/Object;
    iget-object v0, p0, Lcom/bumptech/glide/load/model/stream/HttpUrlGlideUrlLoader;->modelCache:Lcom/bumptech/glide/load/model/ModelCache;

    if-eqz v0, :cond_16

    .line 1053
    iget-object v0, p0, Lcom/bumptech/glide/load/model/stream/HttpUrlGlideUrlLoader;->modelCache:Lcom/bumptech/glide/load/model/ModelCache;

    invoke-virtual {v0, p1, v1, v1}, Lcom/bumptech/glide/load/model/ModelCache;->get(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/model/GlideUrl;

    .line 1054
    if-nez v0, :cond_1c

    .line 1055
    iget-object v0, p0, Lcom/bumptech/glide/load/model/stream/HttpUrlGlideUrlLoader;->modelCache:Lcom/bumptech/glide/load/model/ModelCache;

    invoke-virtual {v0, p1, v1, v1, p1}, Lcom/bumptech/glide/load/model/ModelCache;->put(Ljava/lang/Object;IILjava/lang/Object;)V

    .line 1059
    :cond_16
    :goto_16
    new-instance v0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/data/HttpUrlFetcher;-><init>(Lcom/bumptech/glide/load/model/GlideUrl;)V

    .line 19
    return-object v0

    :cond_1c
    move-object p1, v0

    goto :goto_16
.end method
