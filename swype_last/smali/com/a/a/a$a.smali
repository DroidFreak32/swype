.class public abstract Lcom/a/a/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/a$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BuilderType:",
        "Lcom/a/a/a$a;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/a/a/n$a;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;",
            "Ljava/util/Collection",
            "<-TT;>;)V"
        }
    .end annotation

    instance-of v0, p0, Lcom/a/a/l;

    if-eqz v0, :cond_18

    move-object v0, p0

    check-cast v0, Lcom/a/a/l;

    invoke-interface {v0}, Lcom/a/a/l;->a()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/a$a;->checkForNullValues(Ljava/lang/Iterable;)V

    :goto_e
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_1c

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p1, p0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    :cond_17
    return-void

    :cond_18
    invoke-static {p0}, Lcom/a/a/a$a;->checkForNullValues(Ljava/lang/Iterable;)V

    goto :goto_e

    :cond_1c
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_20
.end method

.method private static checkForNullValues(Ljava/lang/Iterable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;)V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_16
    return-void
.end method

.method public static newUninitializedMessageException(Lcom/a/a/n;)Lcom/a/a/v;
    .registers 2

    new-instance v0, Lcom/a/a/v;

    invoke-direct {v0}, Lcom/a/a/v;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract clone()Lcom/a/a/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation
.end method

.method public bridge synthetic clone()Lcom/a/a/n$a;
    .registers 2

    invoke-virtual {p0}, Lcom/a/a/a$a;->clone()Lcom/a/a/a$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/a/a/a$a;->clone()Lcom/a/a/a$a;

    move-result-object v0

    return-object v0
.end method

.method public mergeDelimitedFrom(Ljava/io/InputStream;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/a/a/f;->a()Lcom/a/a/f;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/a/a/a$a;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/a/a/f;)Z

    move-result v0

    return v0
.end method

.method public mergeDelimitedFrom(Ljava/io/InputStream;Lcom/a/a/f;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x0

    :goto_8
    return v0

    :cond_9
    invoke-static {v0, p1}, Lcom/a/a/d;->a(ILjava/io/InputStream;)I

    move-result v0

    new-instance v1, Lcom/a/a/a$a$a;

    invoke-direct {v1, p1, v0}, Lcom/a/a/a$a$a;-><init>(Ljava/io/InputStream;I)V

    invoke-virtual {p0, v1, p2}, Lcom/a/a/a$a;->mergeFrom(Ljava/io/InputStream;Lcom/a/a/f;)Lcom/a/a/a$a;

    const/4 v0, 0x1

    goto :goto_8
.end method

.method public mergeFrom(Lcom/a/a/c;)Lcom/a/a/a$a;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/c;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Lcom/a/a/c;->h()Lcom/a/a/d;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/a/a/a$a;->mergeFrom(Lcom/a/a/d;)Lcom/a/a/a$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/a/a/d;->a(I)V
    :try_end_b
    .catch Lcom/a/a/j; {:try_start_0 .. :try_end_b} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_e

    return-object p0

    :catch_c
    move-exception v0

    throw v0

    :catch_e
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Reading from a ByteString threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public mergeFrom(Lcom/a/a/c;Lcom/a/a/f;)Lcom/a/a/a$a;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/c;",
            "Lcom/a/a/f;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Lcom/a/a/c;->h()Lcom/a/a/d;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/a/a/a$a;->mergeFrom(Lcom/a/a/d;Lcom/a/a/f;)Lcom/a/a/a$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/a/a/d;->a(I)V
    :try_end_b
    .catch Lcom/a/a/j; {:try_start_0 .. :try_end_b} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_e

    return-object p0

    :catch_c
    move-exception v0

    throw v0

    :catch_e
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Reading from a ByteString threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public mergeFrom(Lcom/a/a/d;)Lcom/a/a/a$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/a/a/f;->a()Lcom/a/a/f;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/a/a/a$a;->mergeFrom(Lcom/a/a/d;Lcom/a/a/f;)Lcom/a/a/a$a;

    move-result-object v0

    return-object v0
.end method

.method public abstract mergeFrom(Lcom/a/a/d;Lcom/a/a/f;)Lcom/a/a/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d;",
            "Lcom/a/a/f;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public mergeFrom(Ljava/io/InputStream;)Lcom/a/a/a$a;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/a/a/d;->a(Ljava/io/InputStream;)Lcom/a/a/d;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/a/a/a$a;->mergeFrom(Lcom/a/a/d;)Lcom/a/a/a$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/a/a/d;->a(I)V

    return-object p0
.end method

.method public mergeFrom(Ljava/io/InputStream;Lcom/a/a/f;)Lcom/a/a/a$a;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/a/a/f;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/a/a/d;->a(Ljava/io/InputStream;)Lcom/a/a/d;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/a/a/a$a;->mergeFrom(Lcom/a/a/d;Lcom/a/a/f;)Lcom/a/a/a$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/a/a/d;->a(I)V

    return-object p0
.end method

.method public mergeFrom([B)Lcom/a/a/a$a;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/a/a/a$a;->mergeFrom([BII)Lcom/a/a/a$a;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom([BII)Lcom/a/a/a$a;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/a/a/d;->a([BII)Lcom/a/a/d;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/a/a/a$a;->mergeFrom(Lcom/a/a/d;)Lcom/a/a/a$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/a/a/d;->a(I)V
    :try_end_b
    .catch Lcom/a/a/j; {:try_start_0 .. :try_end_b} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_e

    return-object p0

    :catch_c
    move-exception v0

    throw v0

    :catch_e
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public mergeFrom([BIILcom/a/a/f;)Lcom/a/a/a$a;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/a/a/f;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/a/a/d;->a([BII)Lcom/a/a/d;

    move-result-object v0

    invoke-virtual {p0, v0, p4}, Lcom/a/a/a$a;->mergeFrom(Lcom/a/a/d;Lcom/a/a/f;)Lcom/a/a/a$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/a/a/d;->a(I)V
    :try_end_b
    .catch Lcom/a/a/j; {:try_start_0 .. :try_end_b} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_e

    return-object p0

    :catch_c
    move-exception v0

    throw v0

    :catch_e
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public mergeFrom([BLcom/a/a/f;)Lcom/a/a/a$a;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/a/a/f;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/a/a/a$a;->mergeFrom([BIILcom/a/a/f;)Lcom/a/a/a$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/a/a/c;)Lcom/a/a/n$a;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/a/a/a$a;->mergeFrom(Lcom/a/a/c;)Lcom/a/a/a$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/a/a/c;Lcom/a/a/f;)Lcom/a/a/n$a;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/a/a/a$a;->mergeFrom(Lcom/a/a/c;Lcom/a/a/f;)Lcom/a/a/a$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/a/a/d;)Lcom/a/a/n$a;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/a/a/a$a;->mergeFrom(Lcom/a/a/d;)Lcom/a/a/a$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/a/a/d;Lcom/a/a/f;)Lcom/a/a/n$a;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/a/a/a$a;->mergeFrom(Lcom/a/a/d;Lcom/a/a/f;)Lcom/a/a/a$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;)Lcom/a/a/n$a;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/a/a/a$a;->mergeFrom(Ljava/io/InputStream;)Lcom/a/a/a$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;Lcom/a/a/f;)Lcom/a/a/n$a;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/a/a/a$a;->mergeFrom(Ljava/io/InputStream;Lcom/a/a/f;)Lcom/a/a/a$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom([B)Lcom/a/a/n$a;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/a/a/a$a;->mergeFrom([B)Lcom/a/a/a$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom([BII)Lcom/a/a/n$a;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/a/a/a$a;->mergeFrom([BII)Lcom/a/a/a$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom([BIILcom/a/a/f;)Lcom/a/a/n$a;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/a/a/a$a;->mergeFrom([BIILcom/a/a/f;)Lcom/a/a/a$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom([BLcom/a/a/f;)Lcom/a/a/n$a;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/a/a/a$a;->mergeFrom([BLcom/a/a/f;)Lcom/a/a/a$a;

    move-result-object v0

    return-object v0
.end method
