.class public Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXByteString;
.super Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXClass;


# instance fields
.field private a:[B


# direct methods
.method public constructor <init>([B)V
    .registers 3

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXClass;-><init>(S)V

    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXByteString;->a:[B

    return-void
.end method


# virtual methods
.method public getValue()[B
    .registers 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXByteString;->a:[B

    return-object v0
.end method

.method public toByteArray()[B
    .registers 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXByteString;->a:[B

    invoke-super {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXClass;->toByteArray([B)[B

    move-result-object v0

    return-object v0
.end method
