.class public interface abstract Lcom/nuance/nmsp/client/sdk/components/resource/nmas/NMASResource;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/nmsp/client/sdk/components/resource/common/Resource;


# static fields
.field public static final PDX_DATA_TYPE_ASCII:S = 0x16s

.field public static final PDX_DATA_TYPE_BYTES:S = 0x4s

.field public static final PDX_DATA_TYPE_DICT:S = 0xe0s

.field public static final PDX_DATA_TYPE_INT:S = 0xc0s

.field public static final PDX_DATA_TYPE_NULL:S = 0x5s

.field public static final PDX_DATA_TYPE_SEQ:S = 0x10s

.field public static final PDX_DATA_TYPE_UTF8:S = 0xc1s


# virtual methods
.method public abstract createCommand(Lcom/nuance/nmsp/client/sdk/components/resource/nmas/PDXCommandListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;J)Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Command;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmsp/client/sdk/components/resource/common/ResourceException;
        }
    .end annotation
.end method

.method public abstract createPDXAudioParam(Ljava/lang/String;)Lcom/nuance/nmsp/client/sdk/components/resource/nmas/AudioParam;
.end method

.method public abstract createPDXChoiceParam(Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Parameter;
.end method

.method public abstract createPDXDataParam(Ljava/lang/String;[B)Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Parameter;
.end method

.method public abstract createPDXDictParam(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;)Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Parameter;
.end method

.method public abstract createPDXDictionary()Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;
.end method

.method public abstract createPDXSeqChunkParam(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;)Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Parameter;
.end method

.method public abstract createPDXSeqEndParam(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;)Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Parameter;
.end method

.method public abstract createPDXSeqStartParam(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;)Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Parameter;
.end method

.method public abstract createPDXSequence()Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;
.end method

.method public abstract createPDXTTSParam(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;Lcom/nuance/nmsp/client/sdk/components/general/NMSPAudioSink;)Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Parameter;
.end method

.method public abstract createPDXTextParam(Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Parameter;
.end method
