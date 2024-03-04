.class public Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXNull;
.super Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXClass;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXClass;-><init>(S)V

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public toByteArray()[B
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-super {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXClass;->toByteArray([B)[B

    move-result-object v0

    return-object v0
.end method
