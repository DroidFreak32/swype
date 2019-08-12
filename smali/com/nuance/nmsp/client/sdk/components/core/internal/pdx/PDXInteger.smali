.class public Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXInteger;
.super Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXClass;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/16 v0, 0xc0

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXClass;-><init>(S)V

    iput p1, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXInteger;->a:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 5

    const/4 v4, 0x3

    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v0, 0xc0

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXClass;-><init>(S)V

    array-length v0, p1

    if-ne v0, v3, :cond_0

    aget-byte v0, p1, v2

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXInteger;->a:I

    :goto_0
    return-void

    :cond_0
    array-length v0, p1

    if-ne v0, v1, :cond_1

    aget-byte v0, p1, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    aget-byte v1, p1, v2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXInteger;->a:I

    goto :goto_0

    :cond_1
    array-length v0, p1

    if-ne v0, v4, :cond_2

    aget-byte v0, p1, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    aget-byte v1, p1, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    aget-byte v1, p1, v2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXInteger;->a:I

    goto :goto_0

    :cond_2
    aget-byte v0, p1, v4

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    aget-byte v1, p1, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    aget-byte v1, p1, v2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXInteger;->a:I

    goto :goto_0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXInteger;->a:I

    return v0
.end method

.method public toByteArray()[B
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXInteger;->a:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x80

    if-ge v0, v1, :cond_0

    new-array v0, v3, [B

    iget v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXInteger;->a:I

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    :goto_0
    invoke-super {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXClass;->toByteArray([B)[B

    move-result-object v0

    return-object v0

    :cond_0
    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXInteger;->a:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const v1, 0x8000

    if-ge v0, v1, :cond_1

    new-array v0, v4, [B

    iget v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXInteger;->a:I

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    iget v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXInteger;->a:I

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    new-array v0, v0, [B

    iget v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXInteger;->a:I

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    iget v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXInteger;->a:I

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    iget v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXInteger;->a:I

    shr-int/lit8 v1, v1, 0x10

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    const/4 v1, 0x3

    iget v2, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXInteger;->a:I

    ushr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_0
.end method
