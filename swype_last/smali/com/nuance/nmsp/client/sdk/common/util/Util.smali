.class public Lcom/nuance/nmsp/client/sdk/common/util/Util;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/nuance/nmsp/client/sdk/common/util/Util;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory;->getLog(Ljava/lang/Class;)Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/nmsp/client/sdk/common/util/Util;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustCodecForBluetooth(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;
    .registers 5

    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->SPEEX_16K:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    if-eq p0, v0, :cond_8

    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->SPEEX_11K:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    if-ne p0, v0, :cond_3b

    :cond_8
    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->SPEEX_8K:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    :goto_a
    sget-object v1, Lcom/nuance/nmsp/client/sdk/common/util/Util;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isInfoEnabled()Z

    move-result v1

    if-eqz v1, :cond_3a

    sget-object v1, Lcom/nuance/nmsp/client/sdk/common/util/Util;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "adjustCodecForBluetooth() "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->getValue()S

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->getValue()S

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->info(Ljava/lang/Object;)V

    :cond_3a
    return-object v0

    :cond_3b
    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->PCM_16_11K:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    if-eq p0, v0, :cond_4b

    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->PCM_16_16K:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    if-eq p0, v0, :cond_4b

    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->PCM_16_22K:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    if-eq p0, v0, :cond_4b

    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->PCM_16_32K:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    if-ne p0, v0, :cond_4e

    :cond_4b
    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->PCM_16_8K:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    goto :goto_a

    :cond_4e
    move-object v0, p0

    goto :goto_a
.end method

.method public static escapeXML(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/util/Util;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/util/Util;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Escaping XML reserved tokens (&, <, >, \" and \') of: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->trace(Ljava/lang/Object;)V

    :cond_1d
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :goto_23
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-ge v0, v2, :cond_7f

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    const/16 v3, 0x26

    if-ne v2, v3, :cond_3c

    add-int/lit8 v0, v0, 0x1

    const-string/jumbo v2, "amp;"

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x4

    goto :goto_23

    :cond_3c
    const/16 v3, 0x3c

    if-ne v2, v3, :cond_4c

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    const-string/jumbo v2, "&lt;"

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x4

    goto :goto_23

    :cond_4c
    const/16 v3, 0x3e

    if-ne v2, v3, :cond_5c

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    const-string/jumbo v2, "&gt;"

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x4

    goto :goto_23

    :cond_5c
    const/16 v3, 0x22

    if-ne v2, v3, :cond_6c

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    const-string/jumbo v2, "&quot;"

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x6

    goto :goto_23

    :cond_6c
    const/16 v3, 0x27

    if-ne v2, v3, :cond_7c

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    const-string/jumbo v2, "&apos;"

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x6

    goto :goto_23

    :cond_7c
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_7f
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/nuance/nmsp/client/sdk/common/util/Util;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_a0

    sget-object v1, Lcom/nuance/nmsp/client/sdk/common/util/Util;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Final output: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->trace(Ljava/lang/Object;)V

    :cond_a0
    return-object v0
.end method

.method public static getCodecStr(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->getValue()S

    move-result v0

    sget-object v1, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->PCM_16_8K:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->getValue()S

    move-result v1

    if-ne v0, v1, :cond_10

    const-string/jumbo v0, "E_ENC_PCM_16_8K"

    :goto_f
    return-object v0

    :cond_10
    sget-object v1, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->PCM_16_11K:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->getValue()S

    move-result v1

    if-ne v0, v1, :cond_1c

    const-string/jumbo v0, "E_ENC_PCM_16_11K"

    goto :goto_f

    :cond_1c
    const-string/jumbo v0, "UNKOWN_CODEC"

    goto :goto_f
.end method

.method public static isAMRCodec(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public static isGSMCodec(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)Z
    .registers 3

    invoke-virtual {p0}, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->getValue()S

    move-result v0

    sget-object v1, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->MS_GSM_FR:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->getValue()S

    move-result v1

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isMP3Codec(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public static isOpusCodec(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)Z
    .registers 3

    invoke-virtual {p0}, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->getValue()S

    move-result v0

    sget-object v1, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->OPUS_16K:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->getValue()S

    move-result v1

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isPCMCodec(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)Z
    .registers 3

    invoke-virtual {p0}, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->getValue()S

    move-result v0

    sget-object v1, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->PCM_16_8K:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->getValue()S

    move-result v1

    if-eq v0, v1, :cond_24

    sget-object v1, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->PCM_16_11K:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->getValue()S

    move-result v1

    if-eq v0, v1, :cond_24

    sget-object v1, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->PCM_16_16K:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->getValue()S

    move-result v1

    if-eq v0, v1, :cond_24

    sget-object v1, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->PCM_16_32K:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->getValue()S

    move-result v1

    if-ne v0, v1, :cond_26

    :cond_24
    const/4 v0, 0x1

    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method public static isSpeexCodec(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)Z
    .registers 3

    invoke-virtual {p0}, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->getValue()S

    move-result v0

    sget-object v1, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->SPEEX_8K:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->getValue()S

    move-result v1

    if-eq v0, v1, :cond_1c

    sget-object v1, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->SPEEX_11K:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->getValue()S

    move-result v1

    if-eq v0, v1, :cond_1c

    sget-object v1, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->SPEEX_16K:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->getValue()S

    move-result v1

    if-ne v0, v1, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method
