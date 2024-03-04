.class public Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXDictParam;
.super Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXParam;

# interfaces
.implements Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Parameter;


# instance fields
.field private a:Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;)V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXParam;-><init>(Ljava/lang/String;B)V

    iput-object p2, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXDictParam;->a:Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;

    return-void
.end method


# virtual methods
.method protected getContent()[B
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXDictParam;->a:Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->getContent()[B

    move-result-object v0

    return-object v0
.end method
