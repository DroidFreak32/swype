.class public Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXClass;
.super Ljava/lang/Object;


# static fields
.field protected static final ASCII:S = 0x16s

.field protected static final BYTES:S = 0x4s

.field protected static final DICT:S = 0xe0s

.field protected static final INT:S = 0xc0s

.field protected static final NULL:S = 0x5s

.field protected static final SEQ:S = 0x10s

.field public static final UTF8:S = 0xc1s


# instance fields
.field private a:S


# direct methods
.method public constructor <init>(S)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXClass;->a:S

    return-void
.end method


# virtual methods
.method public getLength([BI)I
    .registers 5

    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x81

    if-ne v0, v1, :cond_f

    add-int/lit8 v0, p2, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    :cond_e
    :goto_e
    return v0

    :cond_f
    const/16 v1, 0x82

    if-ne v0, v1, :cond_23

    add-int/lit8 v0, p2, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    goto :goto_e

    :cond_23
    const/16 v1, 0x84

    if-ne v0, v1, :cond_e

    add-int/lit8 v0, p2, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x4

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    goto :goto_e
.end method

.method public getLengthSize(I)I
    .registers 3

    const/16 v0, 0x7f

    if-gt p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/16 v0, 0xff

    if-gt p1, v0, :cond_c

    const/4 v0, 0x2

    goto :goto_5

    :cond_c
    const v0, 0xffff

    if-gt p1, v0, :cond_13

    const/4 v0, 0x3

    goto :goto_5

    :cond_13
    const/4 v0, 0x5

    goto :goto_5
.end method

.method public getType()S
    .registers 2

    iget-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXClass;->a:S

    return v0
.end method

.method public toByteArray([B)[B
    .registers 5

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-short v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXClass;->a:S

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v1, p1

    const v2, 0xffff

    if-le v1, v2, :cond_3d

    const/16 v1, 0x84

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v1, p1

    ushr-int/lit8 v1, v1, 0x18

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v1, p1

    shr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v1, p1

    shr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v1, p1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_33
    :goto_33
    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :cond_3d
    array-length v1, p1

    const/16 v2, 0xff

    if-le v1, v2, :cond_56

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v1, p1

    shr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v1, p1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_33

    :cond_56
    array-length v1, p1

    const/16 v2, 0x7f

    if-le v1, v2, :cond_65

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_33

    :cond_65
    array-length v1, p1

    if-ltz v1, :cond_33

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_33
.end method
