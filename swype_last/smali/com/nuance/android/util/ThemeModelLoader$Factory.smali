.class public final Lcom/nuance/android/util/ThemeModelLoader$Factory;
.super Ljava/lang/Object;
.source "ThemeModelLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoaderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/android/util/ThemeModelLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoaderFactory",
        "<",
        "Lcom/nuance/swype/input/ThemeManager$SwypeTheme;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final modelCache:Lcom/bumptech/glide/load/model/ModelCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/ModelCache",
            "<",
            "Lcom/nuance/swype/input/ThemeManager$SwypeTheme;",
            "Lcom/bumptech/glide/load/model/GlideUrl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/bumptech/glide/load/model/ModelCache;

    const/16 v1, 0x15e

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/model/ModelCache;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/android/util/ThemeModelLoader$Factory;->modelCache:Lcom/bumptech/glide/load/model/ModelCache;

    return-void
.end method


# virtual methods
.method public final build(Landroid/content/Context;Lcom/bumptech/glide/load/model/GenericLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoader;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "factories"    # Lcom/bumptech/glide/load/model/GenericLoaderFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/model/GenericLoaderFactory;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<",
            "Lcom/nuance/swype/input/ThemeManager$SwypeTheme;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    new-instance v0, Lcom/nuance/android/util/ThemeModelLoader;

    iget-object v1, p0, Lcom/nuance/android/util/ThemeModelLoader$Factory;->modelCache:Lcom/bumptech/glide/load/model/ModelCache;

    invoke-direct {v0, p1, v1}, Lcom/nuance/android/util/ThemeModelLoader;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/model/ModelCache;)V

    return-object v0
.end method
