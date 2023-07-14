.class public final Lcom/bumptech/glide/load/data/ByteArrayFetcher;
.super Ljava/lang/Object;
.source "ByteArrayFetcher.java"

# interfaces
.implements Lcom/bumptech/glide/load/data/DataFetcher;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/data/DataFetcher",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final bytes:[B

.field private final id:Ljava/lang/String;


# direct methods
.method public constructor <init>([BLjava/lang/String;)V
    .locals 0
    .param p1, "bytes"    # [B
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/bumptech/glide/load/data/ByteArrayFetcher;->bytes:[B

    .line 18
    iput-object p2, p0, Lcom/bumptech/glide/load/data/ByteArrayFetcher;->id:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method public final cleanup()V
    .locals 0

    .prologue
    .line 29
    return-void
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/bumptech/glide/load/data/ByteArrayFetcher;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic loadData(Lcom/bumptech/glide/Priority;)Ljava/lang/Object;
    .locals 2
    .param p1, "x0"    # Lcom/bumptech/glide/Priority;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 12
    .line 1023
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/bumptech/glide/load/data/ByteArrayFetcher;->bytes:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 12
    return-object v0
.end method
