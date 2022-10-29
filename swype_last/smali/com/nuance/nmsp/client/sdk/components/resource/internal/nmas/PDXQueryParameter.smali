.class public Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryParameter;
.super Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXMessage;


# static fields
.field private static final a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryParameter;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory;->getLog(Ljava/lang/Class;)Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryParameter;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXParam;)V
    .registers 7

    const/16 v4, 0xe0

    const/16 v3, 0xc0

    const/16 v2, 0xc1

    const/16 v0, 0x203

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXMessage;-><init>(S)V

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryParameter;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryParameter;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "PDXQueryParameter()"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_1b
    const-string/jumbo v0, "name"

    invoke-virtual {p1}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXParam;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryParameter;->put(Ljava/lang/String;Ljava/lang/String;S)V

    invoke-virtual {p1}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXParam;->getType()B

    move-result v0

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_5c

    const-string/jumbo v0, "type"

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1, v3}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryParameter;->put(Ljava/lang/String;IS)V

    :goto_34
    invoke-virtual {p1}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXParam;->getType()B

    move-result v0

    sparse-switch v0, :sswitch_data_c2

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

    :goto_5b
    return-void

    :cond_5c
    const-string/jumbo v0, "type"

    invoke-virtual {p1}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXParam;->getType()B

    move-result v1

    invoke-virtual {p0, v0, v1, v3}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryParameter;->put(Ljava/lang/String;IS)V

    goto :goto_34

    :sswitch_67
    const-string/jumbo v0, "buffer_id"

    check-cast p1, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXAudioParam;

    invoke-virtual {p1}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXAudioParam;->getBufferId()I

    move-result v1

    invoke-virtual {p0, v0, v1, v3}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryParameter;->put(Ljava/lang/String;IS)V

    goto :goto_5b

    :sswitch_74
    const-string/jumbo v0, "text"

    check-cast p1, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXChoiceParam;

    invoke-virtual {p1}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXChoiceParam;->getChoicename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryParameter;->put(Ljava/lang/String;Ljava/lang/String;S)V

    goto :goto_5b

    :sswitch_81
    const-string/jumbo v0, "data"

    check-cast p1, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXDataParam;

    invoke-virtual {p1}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXDataParam;->getData()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryParameter;->put(Ljava/lang/String;[BS)V

    goto :goto_5b

    :sswitch_8e
    const-string/jumbo v0, "dict"

    check-cast p1, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXDictParam;

    invoke-virtual {p1}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXDictParam;->getContent()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1, v4}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryParameter;->put(Ljava/lang/String;[BS)V

    goto :goto_5b

    :sswitch_9b
    const-string/jumbo v0, "dict"

    check-cast p1, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXSeqParam;

    invoke-virtual {p1}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXSeqParam;->getContent()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1, v4}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryParameter;->put(Ljava/lang/String;[BS)V

    goto :goto_5b

    :sswitch_a8
    const-string/jumbo v0, "text"

    check-cast p1, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTextParam;

    invoke-virtual {p1}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTextParam;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryParameter;->put(Ljava/lang/String;Ljava/lang/String;S)V

    goto :goto_5b

    :sswitch_b5
    const-string/jumbo v0, "dict"

    check-cast p1, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTTSParam;

    invoke-virtual {p1}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTTSParam;->getContent()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1, v4}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryParameter;->put(Ljava/lang/String;[BS)V

    goto :goto_5b

    :sswitch_data_c2
    .sparse-switch
        0x1 -> :sswitch_67
        0x2 -> :sswitch_a8
        0x3 -> :sswitch_74
        0x4 -> :sswitch_81
        0x5 -> :sswitch_8e
        0x6 -> :sswitch_9b
        0x7 -> :sswitch_9b
        0x8 -> :sswitch_9b
        0x7f -> :sswitch_b5
    .end sparse-switch
.end method
