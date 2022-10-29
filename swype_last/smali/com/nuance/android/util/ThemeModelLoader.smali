.class public final Lcom/nuance/android/util/ThemeModelLoader;
.super Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;
.source "ThemeModelLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/android/util/ThemeModelLoader$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader",
        "<",
        "Lcom/nuance/swype/input/ThemeManager$SwypeTheme;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/model/ModelCache;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/model/ModelCache",
            "<",
            "Lcom/nuance/swype/input/ThemeManager$SwypeTheme;",
            "Lcom/bumptech/glide/load/model/GlideUrl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p2, "modelCache":Lcom/bumptech/glide/load/model/ModelCache;, "Lcom/bumptech/glide/load/model/ModelCache<Lcom/nuance/swype/input/ThemeManager$SwypeTheme;Lcom/bumptech/glide/load/model/GlideUrl;>;"
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/model/ModelCache;)V

    .line 58
    iput-object p1, p0, Lcom/nuance/android/util/ThemeModelLoader;->mContext:Landroid/content/Context;

    .line 59
    return-void
.end method


# virtual methods
.method protected final bridge synthetic getUrl$7e16248f(Ljava/lang/Object;)Ljava/lang/String;
    .registers 6

    .prologue
    const/16 v3, 0x2f

    .line 23
    check-cast p1, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 1030
    invoke-virtual {p1}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->isConnectTheme()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1031
    check-cast p1, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    invoke-virtual {p1}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    :goto_10
    return-object v0

    .line 1034
    :cond_11
    iget-object v0, p0, Lcom/nuance/android/util/ThemeModelLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1035
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "android.resource://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1036
    invoke-virtual {p1}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getPreviewResId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1037
    invoke-virtual {p1}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getPreviewResId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1038
    invoke-virtual {p1}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getPreviewResId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_10
.end method
