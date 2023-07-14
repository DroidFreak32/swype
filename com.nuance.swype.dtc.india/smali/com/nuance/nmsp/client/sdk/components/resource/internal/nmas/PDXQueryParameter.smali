.class public Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryParameter;
.super Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXMessage;


# static fields
.field private static final a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryParameter;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory;->getLog(Ljava/lang/Class;)Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryParameter;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXParam;)V
    .locals 5

    const/16 v4, 0xe0

    const/16 v3, 0xc0

    const/16 v2, 0xc1

    const/16 v0, 0x203

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXMessage;-><init>(S)V

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryParameter;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryParameter;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "PDXQueryParameter()"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_0
    const-string/jumbo v0, "name"

    invoke-virtual {p1}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXParam;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryParameter;->put(Ljava/lang/String;Ljava/lang/String;S)V

    invoke-virtual {p1}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXParam;->getType()B

    move-result v0

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "type"

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1, v3}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryParameter;->put(Ljava/lang/String;IS)V

    :goto_0
    invoke-virtual {p1}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXParam;->getType()B

    move-result v0

    sparse-switch v0, :sswitch_data_0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryParameter;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "PDXQueryParameter() Unknown parameter type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXParam;->getType()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_1
    const-string/jumbo v0, "type"

    invoke-virtual {p1}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXParam;->getType()B

    move-result v1

    invoke-virtual {p0, v0, v1, v3}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryParameter;->put(Ljava/lang/String;IS)V

    goto :goto_0

    :sswitch_0
    const-string/jumbo v0, "buffer_id"

    check-cast p1, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXAudioParam;

    invoke-virtual {p1}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXAudioParam;->getBufferId()I

    move-result v1

    invoke-virtual {p0, v0, v1, v3}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryParameter;->put(Ljava/lang/String;IS)V

    goto :goto_1

    :sswitch_1
    const-string/jumbo v0, "text"

    check-cast p1, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXChoiceParam;

    invoke-virtual {p1}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXChoiceParam;->getChoicename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryParameter;->put(Ljava/lang/String;Ljava/lang/String;S)V

    goto :goto_1

    :sswitch_2
    const-string/jumbo v0, "data"

    check-cast p1, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXDataParam;

    invoke-virtual {p1}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXDataParam;->getData()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryParameter;->put(Ljava/lang/String;[BS)V

    goto :goto_1

    :sswitch_3
    const-string/jumbo v0, "dict"

    check-cast p1, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXDictParam;

    invoke-virtual {p1}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXDictParam;->getContent()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1, v4}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryParameter;->put(Ljava/lang/String;[BS)V

    goto :goto_1

    :sswitch_4
    const-string/jumbo v0, "dict"

    check-cast p1, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXSeqParam;

    invoke-virtual {p1}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXSeqParam;->getContent()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1, v4}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryParameter;->put(Ljava/lang/String;[BS)V

    goto :goto_1

    :sswitch_5
    const-string/jumbo v0, "text"

    check-cast p1, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTextParam;

    invoke-virtual {p1}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTextParam;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryParameter;->put(Ljava/lang/String;Ljava/lang/String;S)V

    goto :goto_1

    :sswitch_6
    const-string/jumbo v0, "dict"

    check-cast p1, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTTSParam;

    invoke-virtual {p1}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTTSParam;->getContent()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1, v4}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryParameter;->put(Ljava/lang/String;[BS)V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_5
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x6 -> :sswitch_4
        0x7 -> :sswitch_4
        0x8 -> :sswitch_4
        0x7f -> :sswitch_6
    .end sparse-switch
.end method
