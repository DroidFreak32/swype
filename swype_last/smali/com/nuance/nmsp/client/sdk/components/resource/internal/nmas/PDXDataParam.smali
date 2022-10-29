.class public Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXDataParam;
.super Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXParam;

# interfaces
.implements Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Parameter;


# instance fields
.field private a:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .registers 6

    const/4 v2, 0x0

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXParam;-><init>(Ljava/lang/String;B)V

    array-length v0, p2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXDataParam;->a:[B

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXDataParam;->a:[B

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXDataParam;->a:[B

    array-length v1, v1

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method protected getData()[B
    .registers 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXDataParam;->a:[B

    return-object v0
.end method
