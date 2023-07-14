.class public Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXSeqParam;
.super Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXParam;

# interfaces
.implements Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Parameter;


# static fields
.field public static final SEQ_CHUNK:B = 0x2t

.field public static final SEQ_START:B = 0x1t

.field public static final SEQ__END:B = 0x3t


# instance fields
.field private a:Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;B)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXParam;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    const/4 v0, 0x6

    invoke-super {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXParam;->setType(B)V

    :goto_0
    iput-object p2, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXSeqParam;->a:Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;

    return-void

    :cond_0
    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    const/4 v0, 0x7

    invoke-super {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXParam;->setType(B)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    invoke-super {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXParam;->setType(B)V

    goto :goto_0
.end method


# virtual methods
.method protected getContent()[B
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXSeqParam;->a:Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->getContent()[B

    move-result-object v0

    return-object v0
.end method
