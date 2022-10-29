.class public abstract Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;
.super Ljava/lang/Object;
.source "BaseGlideUrlLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/stream/StreamModelLoader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/stream/StreamModelLoader",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final concreteLoader:Lcom/bumptech/glide/load/model/ModelLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<",
            "Lcom/bumptech/glide/load/model/GlideUrl;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final modelCache:Lcom/bumptech/glide/load/model/ModelCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/ModelCache",
            "<TT;",
            "Lcom/bumptech/glide/load/model/GlideUrl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/model/ModelCache;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/model/ModelCache",
            "<TT;",
            "Lcom/bumptech/glide/load/model/GlideUrl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;, "Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader<TT;>;"
    .local p2, "modelCache":Lcom/bumptech/glide/load/model/ModelCache;, "Lcom/bumptech/glide/load/model/ModelCache<TT;Lcom/bumptech/glide/load/model/GlideUrl;>;"
    const-class v0, Lcom/bumptech/glide/load/model/GlideUrl;

    const-class v1, Ljava/io/InputStream;

    invoke-static {v0, v1, p1}, Lcom/bumptech/glide/Glide;->buildModelLoader(Ljava/lang/Class;Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;-><init>(Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/model/ModelCache;)V

    .line 31
    return-void
.end method

.method private constructor <init>(Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/model/ModelCache;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<",
            "Lcom/bumptech/glide/load/model/GlideUrl;",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/bumptech/glide/load/model/ModelCache",
            "<TT;",
            "Lcom/bumptech/glide/load/model/GlideUrl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;, "Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader<TT;>;"
    .local p1, "concreteLoader":Lcom/bumptech/glide/load/model/ModelLoader;, "Lcom/bumptech/glide/load/model/ModelLoader<Lcom/bumptech/glide/load/model/GlideUrl;Ljava/io/InputStream;>;"
    .local p2, "modelCache":Lcom/bumptech/glide/load/model/ModelCache;, "Lcom/bumptech/glide/load/model/ModelCache<TT;Lcom/bumptech/glide/load/model/GlideUrl;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;->concreteLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    .line 39
    iput-object p2, p0, Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;->modelCache:Lcom/bumptech/glide/load/model/ModelCache;

    .line 40
    return-void
.end method


# virtual methods
.method public final getResourceFetcher(Ljava/lang/Object;II)Lcom/bumptech/glide/load/data/DataFetcher;
    .registers 7
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)",
            "Lcom/bumptech/glide/load/data/DataFetcher",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;, "Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader<TT;>;"
    .local p1, "model":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .line 45
    .local v0, "result":Lcom/bumptech/glide/load/model/GlideUrl;
    iget-object v2, p0, Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;->modelCache:Lcom/bumptech/glide/load/model/ModelCache;

    if-eqz v2, :cond_d

    .line 46
    iget-object v2, p0, Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;->modelCache:Lcom/bumptech/glide/load/model/ModelCache;

    invoke-virtual {v2, p1, p2, p3}, Lcom/bumptech/glide/load/model/ModelCache;->get(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "result":Lcom/bumptech/glide/load/model/GlideUrl;
    check-cast v0, Lcom/bumptech/glide/load/model/GlideUrl;

    .line 49
    .restart local v0    # "result":Lcom/bumptech/glide/load/model/GlideUrl;
    :cond_d
    if-nez v0, :cond_2b

    .line 50
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;->getUrl$7e16248f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "stringURL":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 52
    const/4 v2, 0x0

    .line 62
    .end local v1    # "stringURL":Ljava/lang/String;
    :goto_1a
    return-object v2

    .line 55
    .restart local v1    # "stringURL":Ljava/lang/String;
    :cond_1b
    new-instance v0, Lcom/bumptech/glide/load/model/GlideUrl;

    .line 1084
    .end local v0    # "result":Lcom/bumptech/glide/load/model/GlideUrl;
    sget-object v2, Lcom/bumptech/glide/load/model/Headers;->DEFAULT:Lcom/bumptech/glide/load/model/Headers;

    .line 55
    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/model/GlideUrl;-><init>(Ljava/lang/String;Lcom/bumptech/glide/load/model/Headers;)V

    .line 57
    .restart local v0    # "result":Lcom/bumptech/glide/load/model/GlideUrl;
    iget-object v2, p0, Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;->modelCache:Lcom/bumptech/glide/load/model/ModelCache;

    if-eqz v2, :cond_2b

    .line 58
    iget-object v2, p0, Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;->modelCache:Lcom/bumptech/glide/load/model/ModelCache;

    invoke-virtual {v2, p1, p2, p3, v0}, Lcom/bumptech/glide/load/model/ModelCache;->put(Ljava/lang/Object;IILjava/lang/Object;)V

    .line 62
    .end local v1    # "stringURL":Ljava/lang/String;
    :cond_2b
    iget-object v2, p0, Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;->concreteLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    invoke-interface {v2, v0, p2, p3}, Lcom/bumptech/glide/load/model/ModelLoader;->getResourceFetcher(Ljava/lang/Object;II)Lcom/bumptech/glide/load/data/DataFetcher;

    move-result-object v2

    goto :goto_1a
.end method

.method public abstract getUrl$7e16248f(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method
