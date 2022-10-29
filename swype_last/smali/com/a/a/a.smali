.class public abstract Lcom/a/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method newUninitializedMessageException()Lcom/a/a/v;
    .registers 2

    new-instance v0, Lcom/a/a/v;

    invoke-direct {v0}, Lcom/a/a/v;-><init>()V

    return-object v0
.end method

.method public toByteArray()[B
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Lcom/a/a/a;->getSerializedSize()I

    move-result v0

    new-array v0, v0, [B

    invoke-static {v0}, Lcom/a/a/e;->a([B)Lcom/a/a/e;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/a/a/a;->writeTo(Lcom/a/a/e;)V

    invoke-virtual {v1}, Lcom/a/a/e;->c()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_10} :catch_11

    return-object v0

    :catch_11
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toByteString()Lcom/a/a/c;
    .registers 4

    .prologue
    .line 0
    :try_start_0
    invoke-virtual {p0}, Lcom/a/a/a;->getSerializedSize()I

    move-result v0

    invoke-static {v0}, Lcom/a/a/c;->a(I)Lcom/a/a/c$b;

    move-result-object v0

    .line 1000
    iget-object v1, v0, Lcom/a/a/c$b;->a:Lcom/a/a/e;

    .line 0
    invoke-virtual {p0, v1}, Lcom/a/a/a;->writeTo(Lcom/a/a/e;)V

    .line 2000
    iget-object v1, v0, Lcom/a/a/c$b;->a:Lcom/a/a/e;

    invoke-virtual {v1}, Lcom/a/a/e;->c()V

    new-instance v1, Lcom/a/a/m;

    iget-object v0, v0, Lcom/a/a/c$b;->b:[B

    invoke-direct {v1, v0}, Lcom/a/a/m;-><init>([B)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_19} :catch_1a

    .line 0
    return-object v1

    :catch_1a
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Serializing to a ByteString threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeDelimitedTo(Ljava/io/OutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/a/a/a;->getSerializedSize()I

    move-result v0

    invoke-static {v0}, Lcom/a/a/e;->g(I)I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {v1}, Lcom/a/a/e;->a(I)I

    move-result v1

    invoke-static {p1, v1}, Lcom/a/a/e;->a(Ljava/io/OutputStream;I)Lcom/a/a/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/a/a/e;->f(I)V

    invoke-virtual {p0, v1}, Lcom/a/a/a;->writeTo(Lcom/a/a/e;)V

    invoke-virtual {v1}, Lcom/a/a/e;->a()V

    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/a/a/a;->getSerializedSize()I

    move-result v0

    invoke-static {v0}, Lcom/a/a/e;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/a/a/e;->a(Ljava/io/OutputStream;I)Lcom/a/a/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/a/a/a;->writeTo(Lcom/a/a/e;)V

    invoke-virtual {v0}, Lcom/a/a/e;->a()V

    return-void
.end method
