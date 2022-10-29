.class public Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTTSParam;
.super Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXParam;

# interfaces
.implements Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Parameter;


# instance fields
.field private a:Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;

.field private b:Lcom/nuance/nmsp/client/sdk/components/general/NMSPAudioSink;

.field private c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;Lcom/nuance/nmsp/client/sdk/components/general/NMSPAudioSink;)V
    .registers 7

    const/16 v0, 0x7f

    invoke-direct {p0, p1, v0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXParam;-><init>(Ljava/lang/String;B)V

    iput-object p3, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTTSParam;->a:Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;

    iput-object p4, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTTSParam;->b:Lcom/nuance/nmsp/client/sdk/components/general/NMSPAudioSink;

    invoke-virtual {p2}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->getNewAudioId()I

    move-result v0

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTTSParam;->c:I

    const-string/jumbo v0, "audio_id"

    iget v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTTSParam;->c:I

    invoke-virtual {p3, v0, v1}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->addInteger(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected getAudioId()I
    .registers 2

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTTSParam;->c:I

    return v0
.end method

.method protected getAudioSink()Lcom/nuance/nmsp/client/sdk/components/general/NMSPAudioSink;
    .registers 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTTSParam;->b:Lcom/nuance/nmsp/client/sdk/components/general/NMSPAudioSink;

    return-object v0
.end method

.method protected getContent()[B
    .registers 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTTSParam;->a:Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->getContent()[B

    move-result-object v0

    return-object v0
.end method
