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
    .registers 5

    invoke-direct {p0, p1}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXParam;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p3, v0, :cond_d

    const/4 v0, 0x6

    invoke-super {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXParam;->setType(B)V

    :goto_a
    iput-object p2, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXSeqParam;->a:Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;

    return-void

    :cond_d
    const/4 v0, 0x2

    if-ne p3, v0, :cond_15

    const/4 v0, 0x7

    invoke-super {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXParam;->setType(B)V

    goto :goto_a

    :cond_15
    const/16 v0, 0x8

    invoke-super {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXParam;->setType(B)V

    goto :goto_a
.end method


# virtual methods
.method protected getContent()[B
    .registers 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXSeqParam;->a:Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->getContent()[B

    move-result-object v0

    return-object v0
.end method
