.class final Lcom/a/a/m;
.super Lcom/a/a/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/m$a;
    }
.end annotation


# instance fields
.field protected final c:[B

.field private d:I


# direct methods
.method constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Lcom/a/a/c;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/a/a/m;->d:I

    iput-object p1, p0, Lcom/a/a/m;->c:[B

    return-void
.end method


# virtual methods
.method protected final a(III)I
    .locals 10

    .prologue
    const/16 v9, -0x20

    const/16 v4, -0x60

    const/4 v2, -0x1

    const/16 v8, -0x41

    .line 0
    add-int/lit8 v1, p2, 0x0

    iget-object v5, p0, Lcom/a/a/m;->c:[B

    add-int v6, v1, p3

    .line 4000
    if-eqz p1, :cond_d

    if-lt v1, v6, :cond_0

    :goto_0
    return p1

    :cond_0
    int-to-byte v7, p1

    if-ge v7, v9, :cond_2

    const/16 v0, -0x3e

    if-lt v7, v0, :cond_1

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v5, v1

    if-le v1, v8, :cond_e

    :cond_1
    move p1, v2

    goto :goto_0

    :cond_2
    const/16 v0, -0x10

    if-ge v7, v0, :cond_8

    shr-int/lit8 v0, p1, 0x8

    xor-int/lit8 v0, v0, -0x1

    int-to-byte v0, v0

    if-nez v0, :cond_4

    add-int/lit8 v3, v1, 0x1

    aget-byte v0, v5, v1

    if-lt v3, v6, :cond_3

    invoke-static {v7, v0}, Lcom/a/a/w;->a(II)I

    move-result p1

    goto :goto_0

    :cond_3
    move v1, v3

    :cond_4
    if-gt v0, v8, :cond_7

    if-ne v7, v9, :cond_5

    if-lt v0, v4, :cond_7

    :cond_5
    const/16 v3, -0x13

    if-ne v7, v3, :cond_6

    if-ge v0, v4, :cond_7

    :cond_6
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v5, v1

    if-le v1, v8, :cond_e

    :cond_7
    move p1, v2

    goto :goto_0

    :cond_8
    shr-int/lit8 v0, p1, 0x8

    xor-int/lit8 v0, v0, -0x1

    int-to-byte v3, v0

    const/4 v0, 0x0

    if-nez v3, :cond_9

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v5, v1

    if-lt v3, v6, :cond_f

    invoke-static {v7, v1}, Lcom/a/a/w;->a(II)I

    move-result p1

    goto :goto_0

    :cond_9
    shr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    move v4, v3

    move v3, v1

    :goto_1
    if-nez v0, :cond_a

    add-int/lit8 v1, v3, 0x1

    aget-byte v0, v5, v3

    if-lt v1, v6, :cond_b

    invoke-static {v7, v4, v0}, Lcom/a/a/w;->a(III)I

    move-result p1

    goto :goto_0

    :cond_a
    move v1, v3

    :cond_b
    if-gt v4, v8, :cond_c

    shl-int/lit8 v3, v7, 0x1c

    add-int/lit8 v4, v4, 0x70

    add-int/2addr v3, v4

    shr-int/lit8 v3, v3, 0x1e

    if-nez v3, :cond_c

    if-gt v0, v8, :cond_c

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v5, v1

    if-le v1, v8, :cond_e

    :cond_c
    move p1, v2

    goto :goto_0

    :cond_d
    move v0, v1

    :cond_e
    invoke-static {v5, v0, v6}, Lcom/a/a/w;->b([BII)I

    move-result p1

    goto :goto_0

    :cond_f
    move v4, v1

    goto :goto_1
.end method

.method public final a()Lcom/a/a/c$a;
    .locals 2

    new-instance v0, Lcom/a/a/m$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/a/a/m$a;-><init>(Lcom/a/a/m;B)V

    return-object v0
.end method

.method final a(Lcom/a/a/m;II)Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 0
    .line 8000
    iget-object v1, p1, Lcom/a/a/m;->c:[B

    array-length v1, v1

    .line 0
    if-le p3, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Length too large: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 9000
    iget-object v2, p0, Lcom/a/a/m;->c:[B

    array-length v2, v2

    .line 0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    add-int v1, p2, p3

    .line 10000
    iget-object v2, p1, Lcom/a/a/m;->c:[B

    array-length v2, v2

    .line 0
    if-le v1, v2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Ran off end of other: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 11000
    iget-object v2, p1, Lcom/a/a/m;->c:[B

    array-length v2, v2

    .line 0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v3, p0, Lcom/a/a/m;->c:[B

    iget-object v4, p1, Lcom/a/a/m;->c:[B

    add-int/lit8 v5, p3, 0x0

    add-int/lit8 v1, p2, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v5, :cond_3

    aget-byte v6, v3, v2

    aget-byte v7, v4, v1

    if-eq v6, v7, :cond_2

    :goto_1
    return v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public final b(I)B
    .locals 1

    iget-object v0, p0, Lcom/a/a/m;->c:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lcom/a/a/m;->c:[B

    array-length v0, v0

    return v0
.end method

.method protected final b(III)I
    .locals 5

    iget-object v1, p0, Lcom/a/a/m;->c:[B

    add-int/lit8 v0, p2, 0x0

    add-int v2, v0, p3

    :goto_0
    if-ge v0, v2, :cond_0

    mul-int/lit8 v3, p1, 0x1f

    aget-byte v4, v1, v0

    add-int p1, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return p1
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/a/a/m;->c:[B

    const/4 v2, 0x0

    .line 1000
    iget-object v3, p0, Lcom/a/a/m;->c:[B

    array-length v3, v3

    .line 0
    invoke-direct {v0, v1, v2, v3, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v0
.end method

.method protected final b([BIII)V
    .locals 1

    iget-object v0, p0, Lcom/a/a/m;->c:[B

    invoke-static {v0, p2, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 0
    if-ne p1, p0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/a/a/c;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    .line 5000
    :cond_1
    iget-object v0, p0, Lcom/a/a/m;->c:[B

    array-length v3, v0

    move-object v0, p1

    .line 0
    check-cast v0, Lcom/a/a/c;

    invoke-virtual {v0}, Lcom/a/a/c;->b()I

    move-result v0

    if-eq v3, v0, :cond_2

    move v0, v2

    goto :goto_0

    .line 6000
    :cond_2
    iget-object v0, p0, Lcom/a/a/m;->c:[B

    array-length v0, v0

    .line 0
    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lcom/a/a/m;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/a/a/m;

    .line 7000
    iget-object v0, p0, Lcom/a/a/m;->c:[B

    array-length v0, v0

    .line 0
    invoke-virtual {p0, p1, v2, v0}, Lcom/a/a/m;->a(Lcom/a/a/m;II)Z

    move-result v0

    goto :goto_0

    :cond_4
    instance-of v0, p1, Lcom/a/a/q;

    if-eqz v0, :cond_5

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Has a new type of ByteString been created? Found "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final f()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 0
    iget-object v1, p0, Lcom/a/a/m;->c:[B

    .line 2000
    iget-object v2, p0, Lcom/a/a/m;->c:[B

    array-length v2, v2

    .line 0
    add-int/lit8 v2, v2, 0x0

    .line 3000
    invoke-static {v1, v0, v2}, Lcom/a/a/w;->b([BII)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final g()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/a/a/m;->c:[B

    const/4 v2, 0x0

    .line 13000
    iget-object v3, p0, Lcom/a/a/m;->c:[B

    array-length v3, v3

    .line 0
    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v0
.end method

.method public final h()Lcom/a/a/d;
    .locals 3

    .prologue
    .line 0
    iget-object v0, p0, Lcom/a/a/m;->c:[B

    const/4 v1, 0x0

    .line 14000
    iget-object v2, p0, Lcom/a/a/m;->c:[B

    array-length v2, v2

    .line 0
    invoke-static {v0, v1, v2}, Lcom/a/a/d;->a([BII)Lcom/a/a/d;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 0
    iget v0, p0, Lcom/a/a/m;->d:I

    if-nez v0, :cond_1

    .line 12000
    iget-object v0, p0, Lcom/a/a/m;->c:[B

    array-length v0, v0

    .line 0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v0}, Lcom/a/a/m;->b(III)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput v0, p0, Lcom/a/a/m;->d:I

    :cond_1
    return v0
.end method

.method protected final i()I
    .locals 1

    iget v0, p0, Lcom/a/a/m;->d:I

    return v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/a/a/m;->a()Lcom/a/a/c$a;

    move-result-object v0

    return-object v0
.end method
