.class public abstract Lcom/a/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType::",
        "Lcom/a/a/n;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/a/a/p",
        "<TMessageType;>;"
    }
.end annotation


# static fields
.field private static final EMPTY_REGISTRY:Lcom/a/a/f;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/a/a/f;->a()Lcom/a/a/f;

    move-result-object v0

    sput-object v0, Lcom/a/a/b;->EMPTY_REGISTRY:Lcom/a/a/f;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkMessageInitialized(Lcom/a/a/n;)Lcom/a/a/n;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    .prologue
    .line 0
    if-eqz p1, :cond_18

    invoke-interface {p1}, Lcom/a/a/n;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-direct {p0, p1}, Lcom/a/a/b;->newUninitializedMessageException(Lcom/a/a/n;)Lcom/a/a/v;

    move-result-object v0

    .line 1000
    new-instance v1, Lcom/a/a/j;

    invoke-virtual {v0}, Lcom/a/a/v;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/a/a/j;-><init>(Ljava/lang/String;)V

    .line 2000
    iput-object p1, v1, Lcom/a/a/j;->a:Lcom/a/a/n;

    .line 0
    throw v1

    :cond_18
    return-object p1
.end method

.method private newUninitializedMessageException(Lcom/a/a/n;)Lcom/a/a/v;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)",
            "Lcom/a/a/v;"
        }
    .end annotation

    instance-of v0, p1, Lcom/a/a/a;

    if-eqz v0, :cond_b

    check-cast p1, Lcom/a/a/a;

    invoke-virtual {p1}, Lcom/a/a/a;->newUninitializedMessageException()Lcom/a/a/v;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Lcom/a/a/v;

    invoke-direct {v0}, Lcom/a/a/v;-><init>()V

    goto :goto_a
.end method


# virtual methods
.method public parseDelimitedFrom(Ljava/io/InputStream;)Lcom/a/a/n;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    sget-object v0, Lcom/a/a/b;->EMPTY_REGISTRY:Lcom/a/a/f;

    invoke-virtual {p0, p1, v0}, Lcom/a/a/b;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/a/a/f;)Lcom/a/a/n;

    move-result-object v0

    return-object v0
.end method

.method public parseDelimitedFrom(Ljava/io/InputStream;Lcom/a/a/f;)Lcom/a/a/n;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/a/a/f;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/a/a/b;->parsePartialDelimitedFrom(Ljava/io/InputStream;Lcom/a/a/f;)Lcom/a/a/n;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/a/a/b;->checkMessageInitialized(Lcom/a/a/n;)Lcom/a/a/n;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/a/a/b;->parseDelimitedFrom(Ljava/io/InputStream;)Lcom/a/a/n;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parseDelimitedFrom(Ljava/io/InputStream;Lcom/a/a/f;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/a/a/b;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/a/a/f;)Lcom/a/a/n;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom(Lcom/a/a/c;)Lcom/a/a/n;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/c;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    sget-object v0, Lcom/a/a/b;->EMPTY_REGISTRY:Lcom/a/a/f;

    invoke-virtual {p0, p1, v0}, Lcom/a/a/b;->parseFrom(Lcom/a/a/c;Lcom/a/a/f;)Lcom/a/a/n;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom(Lcom/a/a/c;Lcom/a/a/f;)Lcom/a/a/n;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/c;",
            "Lcom/a/a/f;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/a/a/b;->parsePartialFrom(Lcom/a/a/c;Lcom/a/a/f;)Lcom/a/a/n;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/a/a/b;->checkMessageInitialized(Lcom/a/a/n;)Lcom/a/a/n;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom(Lcom/a/a/d;)Lcom/a/a/n;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    sget-object v0, Lcom/a/a/b;->EMPTY_REGISTRY:Lcom/a/a/f;

    invoke-virtual {p0, p1, v0}, Lcom/a/a/b;->parseFrom(Lcom/a/a/d;Lcom/a/a/f;)Lcom/a/a/n;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom(Lcom/a/a/d;Lcom/a/a/f;)Lcom/a/a/n;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d;",
            "Lcom/a/a/f;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/a/a/b;->parsePartialFrom(Lcom/a/a/d;Lcom/a/a/f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/n;

    invoke-direct {p0, v0}, Lcom/a/a/b;->checkMessageInitialized(Lcom/a/a/n;)Lcom/a/a/n;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom(Ljava/io/InputStream;)Lcom/a/a/n;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    sget-object v0, Lcom/a/a/b;->EMPTY_REGISTRY:Lcom/a/a/f;

    invoke-virtual {p0, p1, v0}, Lcom/a/a/b;->parseFrom(Ljava/io/InputStream;Lcom/a/a/f;)Lcom/a/a/n;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom(Ljava/io/InputStream;Lcom/a/a/f;)Lcom/a/a/n;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/a/a/f;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/a/a/b;->parsePartialFrom(Ljava/io/InputStream;Lcom/a/a/f;)Lcom/a/a/n;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/a/a/b;->checkMessageInitialized(Lcom/a/a/n;)Lcom/a/a/n;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom([B)Lcom/a/a/n;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    sget-object v0, Lcom/a/a/b;->EMPTY_REGISTRY:Lcom/a/a/f;

    invoke-virtual {p0, p1, v0}, Lcom/a/a/b;->parseFrom([BLcom/a/a/f;)Lcom/a/a/n;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom([BII)Lcom/a/a/n;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    sget-object v0, Lcom/a/a/b;->EMPTY_REGISTRY:Lcom/a/a/f;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/a/a/b;->parseFrom([BIILcom/a/a/f;)Lcom/a/a/n;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom([BIILcom/a/a/f;)Lcom/a/a/n;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/a/a/f;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/a/a/b;->parsePartialFrom([BIILcom/a/a/f;)Lcom/a/a/n;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/a/a/b;->checkMessageInitialized(Lcom/a/a/n;)Lcom/a/a/n;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom([BLcom/a/a/f;)Lcom/a/a/n;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/a/a/f;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/a/a/b;->parseFrom([BIILcom/a/a/f;)Lcom/a/a/n;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parseFrom(Lcom/a/a/c;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/a/a/b;->parseFrom(Lcom/a/a/c;)Lcom/a/a/n;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parseFrom(Lcom/a/a/c;Lcom/a/a/f;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/a/a/b;->parseFrom(Lcom/a/a/c;Lcom/a/a/f;)Lcom/a/a/n;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parseFrom(Lcom/a/a/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/a/a/b;->parseFrom(Lcom/a/a/d;)Lcom/a/a/n;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parseFrom(Lcom/a/a/d;Lcom/a/a/f;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/a/a/b;->parseFrom(Lcom/a/a/d;Lcom/a/a/f;)Lcom/a/a/n;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/a/a/b;->parseFrom(Ljava/io/InputStream;)Lcom/a/a/n;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parseFrom(Ljava/io/InputStream;Lcom/a/a/f;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/a/a/b;->parseFrom(Ljava/io/InputStream;Lcom/a/a/f;)Lcom/a/a/n;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parseFrom([B)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/a/a/b;->parseFrom([B)Lcom/a/a/n;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parseFrom([BII)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/a/a/b;->parseFrom([BII)Lcom/a/a/n;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parseFrom([BIILcom/a/a/f;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/a/a/b;->parseFrom([BIILcom/a/a/f;)Lcom/a/a/n;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parseFrom([BLcom/a/a/f;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/a/a/b;->parseFrom([BLcom/a/a/f;)Lcom/a/a/n;

    move-result-object v0

    return-object v0
.end method

.method public parsePartialDelimitedFrom(Ljava/io/InputStream;)Lcom/a/a/n;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    sget-object v0, Lcom/a/a/b;->EMPTY_REGISTRY:Lcom/a/a/f;

    invoke-virtual {p0, p1, v0}, Lcom/a/a/b;->parsePartialDelimitedFrom(Ljava/io/InputStream;Lcom/a/a/f;)Lcom/a/a/n;

    move-result-object v0

    return-object v0
.end method

.method public parsePartialDelimitedFrom(Ljava/io/InputStream;Lcom/a/a/f;)Lcom/a/a/n;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/a/a/f;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x0

    :goto_8
    return-object v0

    :cond_9
    invoke-static {v0, p1}, Lcom/a/a/d;->a(ILjava/io/InputStream;)I
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_17

    move-result v0

    new-instance v1, Lcom/a/a/a$a$a;

    invoke-direct {v1, p1, v0}, Lcom/a/a/a$a$a;-><init>(Ljava/io/InputStream;I)V

    invoke-virtual {p0, v1, p2}, Lcom/a/a/b;->parsePartialFrom(Ljava/io/InputStream;Lcom/a/a/f;)Lcom/a/a/n;

    move-result-object v0

    goto :goto_8

    :catch_17
    move-exception v0

    new-instance v1, Lcom/a/a/j;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/a/a/j;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic parsePartialDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/a/a/b;->parsePartialDelimitedFrom(Ljava/io/InputStream;)Lcom/a/a/n;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parsePartialDelimitedFrom(Ljava/io/InputStream;Lcom/a/a/f;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/a/a/b;->parsePartialDelimitedFrom(Ljava/io/InputStream;Lcom/a/a/f;)Lcom/a/a/n;

    move-result-object v0

    return-object v0
.end method

.method public parsePartialFrom(Lcom/a/a/c;)Lcom/a/a/n;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/c;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    sget-object v0, Lcom/a/a/b;->EMPTY_REGISTRY:Lcom/a/a/f;

    invoke-virtual {p0, p1, v0}, Lcom/a/a/b;->parsePartialFrom(Lcom/a/a/c;Lcom/a/a/f;)Lcom/a/a/n;

    move-result-object v0

    return-object v0
.end method

.method public parsePartialFrom(Lcom/a/a/c;Lcom/a/a/f;)Lcom/a/a/n;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/c;",
            "Lcom/a/a/f;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    .prologue
    .line 0
    :try_start_0
    invoke-virtual {p1}, Lcom/a/a/c;->h()Lcom/a/a/d;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/a/a/b;->parsePartialFrom(Lcom/a/a/d;Lcom/a/a/f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/n;
    :try_end_a
    .catch Lcom/a/a/j; {:try_start_0 .. :try_end_a} :catch_13
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_15

    const/4 v2, 0x0

    :try_start_b
    invoke-virtual {v1, v2}, Lcom/a/a/d;->a(I)V
    :try_end_e
    .catch Lcom/a/a/j; {:try_start_b .. :try_end_e} :catch_f
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_e} :catch_15

    return-object v0

    :catch_f
    move-exception v1

    .line 3000
    :try_start_10
    iput-object v0, v1, Lcom/a/a/j;->a:Lcom/a/a/n;

    .line 0
    throw v1
    :try_end_13
    .catch Lcom/a/a/j; {:try_start_10 .. :try_end_13} :catch_13
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_15

    :catch_13
    move-exception v0

    throw v0

    :catch_15
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Reading from a ByteString threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public parsePartialFrom(Lcom/a/a/d;)Lcom/a/a/n;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    sget-object v0, Lcom/a/a/b;->EMPTY_REGISTRY:Lcom/a/a/f;

    invoke-virtual {p0, p1, v0}, Lcom/a/a/b;->parsePartialFrom(Lcom/a/a/d;Lcom/a/a/f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/n;

    return-object v0
.end method

.method public parsePartialFrom(Ljava/io/InputStream;)Lcom/a/a/n;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    sget-object v0, Lcom/a/a/b;->EMPTY_REGISTRY:Lcom/a/a/f;

    invoke-virtual {p0, p1, v0}, Lcom/a/a/b;->parsePartialFrom(Ljava/io/InputStream;Lcom/a/a/f;)Lcom/a/a/n;

    move-result-object v0

    return-object v0
.end method

.method public parsePartialFrom(Ljava/io/InputStream;Lcom/a/a/f;)Lcom/a/a/n;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/a/a/f;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    .prologue
    .line 0
    invoke-static {p1}, Lcom/a/a/d;->a(Ljava/io/InputStream;)Lcom/a/a/d;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/a/a/b;->parsePartialFrom(Lcom/a/a/d;Lcom/a/a/f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/n;

    const/4 v2, 0x0

    :try_start_b
    invoke-virtual {v1, v2}, Lcom/a/a/d;->a(I)V
    :try_end_e
    .catch Lcom/a/a/j; {:try_start_b .. :try_end_e} :catch_f

    return-object v0

    :catch_f
    move-exception v1

    .line 5000
    iput-object v0, v1, Lcom/a/a/j;->a:Lcom/a/a/n;

    .line 0
    throw v1
.end method

.method public parsePartialFrom([B)Lcom/a/a/n;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    sget-object v2, Lcom/a/a/b;->EMPTY_REGISTRY:Lcom/a/a/f;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/a/a/b;->parsePartialFrom([BIILcom/a/a/f;)Lcom/a/a/n;

    move-result-object v0

    return-object v0
.end method

.method public parsePartialFrom([BII)Lcom/a/a/n;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    sget-object v0, Lcom/a/a/b;->EMPTY_REGISTRY:Lcom/a/a/f;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/a/a/b;->parsePartialFrom([BIILcom/a/a/f;)Lcom/a/a/n;

    move-result-object v0

    return-object v0
.end method

.method public parsePartialFrom([BIILcom/a/a/f;)Lcom/a/a/n;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/a/a/f;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    .prologue
    .line 0
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/a/a/d;->a([BII)Lcom/a/a/d;

    move-result-object v1

    invoke-virtual {p0, v1, p4}, Lcom/a/a/b;->parsePartialFrom(Lcom/a/a/d;Lcom/a/a/f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/n;
    :try_end_a
    .catch Lcom/a/a/j; {:try_start_0 .. :try_end_a} :catch_13
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_15

    const/4 v2, 0x0

    :try_start_b
    invoke-virtual {v1, v2}, Lcom/a/a/d;->a(I)V
    :try_end_e
    .catch Lcom/a/a/j; {:try_start_b .. :try_end_e} :catch_f
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_e} :catch_15

    return-object v0

    :catch_f
    move-exception v1

    .line 4000
    :try_start_10
    iput-object v0, v1, Lcom/a/a/j;->a:Lcom/a/a/n;

    .line 0
    throw v1
    :try_end_13
    .catch Lcom/a/a/j; {:try_start_10 .. :try_end_13} :catch_13
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_15

    :catch_13
    move-exception v0

    throw v0

    :catch_15
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public parsePartialFrom([BLcom/a/a/f;)Lcom/a/a/n;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/a/a/f;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/a/a/b;->parsePartialFrom([BIILcom/a/a/f;)Lcom/a/a/n;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/a/a/c;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/a/a/b;->parsePartialFrom(Lcom/a/a/c;)Lcom/a/a/n;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/a/a/c;Lcom/a/a/f;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/a/a/b;->parsePartialFrom(Lcom/a/a/c;Lcom/a/a/f;)Lcom/a/a/n;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/a/a/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/a/a/b;->parsePartialFrom(Lcom/a/a/d;)Lcom/a/a/n;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/a/a/b;->parsePartialFrom(Ljava/io/InputStream;)Lcom/a/a/n;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Ljava/io/InputStream;Lcom/a/a/f;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/a/a/b;->parsePartialFrom(Ljava/io/InputStream;Lcom/a/a/f;)Lcom/a/a/n;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom([B)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/a/a/b;->parsePartialFrom([B)Lcom/a/a/n;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom([BII)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/a/a/b;->parsePartialFrom([BII)Lcom/a/a/n;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom([BIILcom/a/a/f;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/a/a/b;->parsePartialFrom([BIILcom/a/a/f;)Lcom/a/a/n;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom([BLcom/a/a/f;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/a/a/b;->parsePartialFrom([BLcom/a/a/f;)Lcom/a/a/n;

    move-result-object v0

    return-object v0
.end method
