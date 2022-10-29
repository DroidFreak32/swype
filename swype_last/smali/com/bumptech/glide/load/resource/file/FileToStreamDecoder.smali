.class public final Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;
.super Ljava/lang/Object;
.source "FileToStreamDecoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/ResourceDecoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/ResourceDecoder",
        "<",
        "Ljava/io/File;",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_FILE_OPENER:Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;


# instance fields
.field private final fileOpener:Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;

.field private streamDecoder:Lcom/bumptech/glide/load/ResourceDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Ljava/io/InputStream;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    new-instance v0, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;->DEFAULT_FILE_OPENER:Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/ResourceDecoder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Ljava/io/InputStream;",
            "TT;>;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, "this":Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;, "Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder<TT;>;"
    .local p1, "streamDecoder":Lcom/bumptech/glide/load/ResourceDecoder;, "Lcom/bumptech/glide/load/ResourceDecoder<Ljava/io/InputStream;TT;>;"
    sget-object v0, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;->DEFAULT_FILE_OPENER:Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;-><init>(Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;)V

    .line 25
    return-void
.end method

.method private constructor <init>(Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;)V
    .registers 3
    .param p2, "fileOpener"    # Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Ljava/io/InputStream;",
            "TT;>;",
            "Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "this":Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;, "Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder<TT;>;"
    .local p1, "streamDecoder":Lcom/bumptech/glide/load/ResourceDecoder;, "Lcom/bumptech/glide/load/ResourceDecoder<Ljava/io/InputStream;TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;->streamDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    .line 30
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;->fileOpener:Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;

    .line 31
    return-void
.end method

.method private decode(Ljava/io/File;II)Lcom/bumptech/glide/load/engine/Resource;
    .registers 9
    .param p1, "source"    # Ljava/io/File;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "II)",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;, "Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder<TT;>;"
    const/4 v0, 0x0

    .line 1060
    .local v0, "is":Ljava/io/InputStream;
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_10

    .line 39
    .end local v0    # "is":Ljava/io/InputStream;
    .local v1, "is":Ljava/io/InputStream;
    :try_start_6
    iget-object v3, p0, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;->streamDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v3, v1, p2, p3}, Lcom/bumptech/glide/load/ResourceDecoder;->decode(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/Resource;
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_1b

    move-result-object v2

    .line 43
    .local v2, "result":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TT;>;"
    :try_start_c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_f} :catch_17

    .line 49
    :goto_f
    return-object v2

    .line 41
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v2    # "result":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TT;>;"
    .restart local v0    # "is":Ljava/io/InputStream;
    :catchall_10
    move-exception v3

    :goto_11
    if-eqz v0, :cond_16

    .line 43
    :try_start_13
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_19

    .line 46
    :cond_16
    :goto_16
    throw v3

    .end local v0    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    .restart local v2    # "result":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TT;>;"
    :catch_17
    move-exception v3

    goto :goto_f

    .end local v1    # "is":Ljava/io/InputStream;
    .end local v2    # "result":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TT;>;"
    .restart local v0    # "is":Ljava/io/InputStream;
    :catch_19
    move-exception v4

    goto :goto_16

    .line 41
    .end local v0    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    :catchall_1b
    move-exception v3

    move-object v0, v1

    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v0    # "is":Ljava/io/InputStream;
    goto :goto_11
.end method


# virtual methods
.method public final bridge synthetic decode(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/Resource;
    .registers 5
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17
    .local p0, "this":Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;, "Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder<TT;>;"
    check-cast p1, Ljava/io/File;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-direct {p0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;->decode(Ljava/io/File;II)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    .local p0, "this":Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;, "Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder<TT;>;"
    const-string/jumbo v0, ""

    return-object v0
.end method
