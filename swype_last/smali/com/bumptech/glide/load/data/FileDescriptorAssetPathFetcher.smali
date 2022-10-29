.class public final Lcom/bumptech/glide/load/data/FileDescriptorAssetPathFetcher;
.super Lcom/bumptech/glide/load/data/AssetPathFetcher;
.source "FileDescriptorAssetPathFetcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/data/AssetPathFetcher",
        "<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .registers 3
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;
    .param p2, "assetPath"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/load/data/AssetPathFetcher;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    .line 14
    return-void
.end method


# virtual methods
.method protected final bridge synthetic close(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11
    check-cast p1, Landroid/os/ParcelFileDescriptor;

    .line 1023
    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 11
    return-void
.end method

.method protected final bridge synthetic loadResource(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p1, "x0"    # Landroid/content/res/AssetManager;
    .param p2, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11
    .line 2018
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 11
    return-object v0
.end method
