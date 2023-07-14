.class final Lcom/a/a/w;
.super Ljava/lang/Object;


# direct methods
.method static a(II)I
    .locals 1

    const/16 v0, -0xc

    if-gt p0, v0, :cond_0

    const/16 v0, -0x41

    if-le p1, v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    shl-int/lit8 v0, p1, 0x8

    xor-int/2addr v0, p0

    goto :goto_0
.end method

.method static a(III)I
    .locals 2

    const/16 v1, -0x41

    const/16 v0, -0xc

    if-gt p0, v0, :cond_0

    if-gt p1, v1, :cond_0

    if-le p2, v1, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    shl-int/lit8 v0, p1, 0x8

    xor-int/2addr v0, p0

    shl-int/lit8 v1, p2, 0x10

    xor-int/2addr v0, v1

    goto :goto_0
.end method

.method public static b([BII)I
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/16 v8, -0x20

    const/16 v7, -0x60

    const/4 v2, -0x1

    const/16 v6, -0x41

    .line 0
    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_0

    aget-byte v3, p0, v0

    if-ltz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-lt v0, p2, :cond_3

    move v0, v1

    .line 1000
    :cond_1
    :goto_1
    return v0

    :cond_2
    move v0, v3

    :cond_3
    if-lt v0, p2, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    add-int/lit8 v3, v0, 0x1

    aget-byte v0, p0, v0

    if-gez v0, :cond_2

    if-ge v0, v8, :cond_6

    if-ge v3, p2, :cond_1

    const/16 v4, -0x3e

    if-lt v0, v4, :cond_5

    add-int/lit8 v0, v3, 0x1

    aget-byte v3, p0, v3

    if-le v3, v6, :cond_3

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    const/16 v4, -0x10

    if-ge v0, v4, :cond_b

    add-int/lit8 v4, p2, -0x1

    if-lt v3, v4, :cond_7

    invoke-static {p0, v3, p2}, Lcom/a/a/w;->d([BII)I

    move-result v0

    goto :goto_1

    :cond_7
    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p0, v3

    if-gt v3, v6, :cond_a

    if-ne v0, v8, :cond_8

    if-lt v3, v7, :cond_a

    :cond_8
    const/16 v5, -0x13

    if-ne v0, v5, :cond_9

    if-ge v3, v7, :cond_a

    :cond_9
    add-int/lit8 v0, v4, 0x1

    aget-byte v3, p0, v4

    if-le v3, v6, :cond_3

    :cond_a
    move v0, v2

    goto :goto_1

    :cond_b
    add-int/lit8 v4, p2, -0x2

    if-lt v3, v4, :cond_c

    invoke-static {p0, v3, p2}, Lcom/a/a/w;->d([BII)I

    move-result v0

    goto :goto_1

    :cond_c
    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p0, v3

    if-gt v3, v6, :cond_d

    shl-int/lit8 v0, v0, 0x1c

    add-int/lit8 v3, v3, 0x70

    add-int/2addr v0, v3

    shr-int/lit8 v0, v0, 0x1e

    if-nez v0, :cond_d

    add-int/lit8 v3, v4, 0x1

    aget-byte v0, p0, v4

    if-gt v0, v6, :cond_d

    add-int/lit8 v0, v3, 0x1

    aget-byte v3, p0, v3

    if-le v3, v6, :cond_3

    :cond_d
    move v0, v2

    goto :goto_1
.end method

.method private static d([BII)I
    .locals 3

    .prologue
    .line 0
    add-int/lit8 v0, p1, -0x1

    aget-byte v0, p0, v0

    sub-int v1, p2, p1

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2000
    :pswitch_0
    const/16 v1, -0xc

    if-le v0, v1, :cond_0

    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    .line 0
    :pswitch_1
    aget-byte v1, p0, p1

    invoke-static {v0, v1}, Lcom/a/a/w;->a(II)I

    move-result v0

    goto :goto_0

    :pswitch_2
    aget-byte v1, p0, p1

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    invoke-static {v0, v1, v2}, Lcom/a/a/w;->a(III)I

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
