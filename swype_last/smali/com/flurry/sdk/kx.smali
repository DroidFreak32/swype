.class public final Lcom/flurry/sdk/kx;
.super Lcom/flurry/sdk/kw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ObjectType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/flurry/sdk/kw",
        "<TObjectType;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/kz;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/kz",
            "<TObjectType;>;)V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/flurry/sdk/kw;-><init>(Lcom/flurry/sdk/kz;)V

    .line 20
    return-void
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TObjectType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 38
    if-eqz p1, :cond_f

    .line 42
    :try_start_3
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_10

    .line 43
    :try_start_8
    invoke-super {p0, v1}, Lcom/flurry/sdk/kw;->a(Ljava/io/InputStream;)Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_18

    move-result-object v0

    .line 45
    invoke-static {v1}, Lcom/flurry/sdk/lr;->a(Ljava/io/Closeable;)V

    .line 49
    :cond_f
    return-object v0

    .line 45
    :catchall_10
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    :goto_14
    invoke-static {v1}, Lcom/flurry/sdk/lr;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_18
    move-exception v0

    goto :goto_14
.end method

.method public final a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "TObjectType;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    if-eqz p1, :cond_e

    .line 25
    const/4 v2, 0x0

    .line 28
    :try_start_3
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, p1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_f

    .line 29
    :try_start_8
    invoke-super {p0, v1, p2}, Lcom/flurry/sdk/kw;->a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_15

    .line 31
    invoke-static {v1}, Lcom/flurry/sdk/lr;->a(Ljava/io/Closeable;)V

    .line 34
    :cond_e
    return-void

    .line 31
    :catchall_f
    move-exception v0

    move-object v1, v2

    :goto_11
    invoke-static {v1}, Lcom/flurry/sdk/lr;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_15
    move-exception v0

    goto :goto_11
.end method
