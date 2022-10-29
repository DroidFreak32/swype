.class public final Lcom/flurry/sdk/ky;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/kz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/kz",
        "<",
        "Ljava/util/List",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field a:Lcom/flurry/sdk/kz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kz",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/kz;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/kz",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/flurry/sdk/ky;->a:Lcom/flurry/sdk/kz;

    .line 28
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/ky;->b(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/ky;->a(Ljava/io/OutputStream;Ljava/util/List;)V

    return-void
.end method

.method public final a(Ljava/io/OutputStream;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 32
    if-nez p1, :cond_4

    .line 52
    :goto_3
    return-void

    .line 36
    :cond_4
    new-instance v2, Lcom/flurry/sdk/ky$1;

    invoke-direct {v2, p0, p1}, Lcom/flurry/sdk/ky$1;-><init>(Lcom/flurry/sdk/ky;Ljava/io/OutputStream;)V

    .line 44
    if-eqz p2, :cond_20

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 45
    :goto_f
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 47
    :goto_12
    if-ge v1, v0, :cond_22

    .line 48
    iget-object v3, p0, Lcom/flurry/sdk/ky;->a:Lcom/flurry/sdk/kz;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Lcom/flurry/sdk/kz;->a(Ljava/io/OutputStream;Ljava/lang/Object;)V

    .line 47
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_20
    move v0, v1

    .line 44
    goto :goto_f

    .line 51
    :cond_22
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    goto :goto_3
.end method

.method public final b(Ljava/io/InputStream;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    if-nez p1, :cond_4

    .line 57
    const/4 v0, 0x0

    .line 79
    :cond_3
    return-object v0

    .line 60
    :cond_4
    new-instance v0, Lcom/flurry/sdk/ky$2;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/ky$2;-><init>(Lcom/flurry/sdk/ky;Ljava/io/InputStream;)V

    .line 68
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 71
    const/4 v1, 0x0

    :goto_13
    if-ge v1, v2, :cond_3

    .line 72
    iget-object v3, p0, Lcom/flurry/sdk/ky;->a:Lcom/flurry/sdk/kz;

    invoke-interface {v3, p1}, Lcom/flurry/sdk/kz;->a(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v3

    .line 73
    if-nez v3, :cond_26

    .line 74
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Missing record."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_26
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_13
.end method
