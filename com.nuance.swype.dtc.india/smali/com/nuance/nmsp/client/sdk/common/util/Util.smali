.class public Lcom/nuance/nmsp/client/sdk/common/util/Util;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/nuance/nmsp/client/sdk/common/util/Util;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory;->getLog(Ljava/lang/Class;)Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/nmsp/client/sdk/common/util/Util;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustCodecForBluetooth(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;
    .locals 4

    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->SPEEX_16K:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->SPEEX_11K:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    if-ne p0, v0, :cond_2

    :cond_0
    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->SPEEX_8K:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    :goto_0
    sget-object v1, Lcom/nuance/nmsp/client/sdk/common/util/Util;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isInfoEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

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

    :cond_1
    return-object v0

    :cond_2
    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->PCM_16_11K:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    if-eq p0, v0, :cond_3

    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->PCM_16_16K:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    if-eq p0, v0, :cond_3

    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->PCM_16_22K:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    if-eq p0, v0, :cond_3

    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->PCM_16_32K:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    if-ne p0, v0, :cond_4

    :cond_3
    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->PCM_16_8K:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    goto :goto_0

    :cond_4
    move-object v0, p0

    goto :goto_0
.end method

.method public static escapeXML(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/util/Util;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/util/Util;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Escaping XML reserved tokens (&, <, >, \" and \') of: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->trace(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-ge v0, v2, :cond_6

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    const/16 v3, 0x26

    if-ne v2, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    const-string/jumbo v2, "amp;"

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_1
    const/16 v3, 0x3c

    if-ne v2, v3, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    const-string/jumbo v2, "&lt;"

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_2
    const/16 v3, 0x3e

    if-ne v2, v3, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    const-string/jumbo v2, "&gt;"

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_3
    const/16 v3, 0x22

    if-ne v2, v3, :cond_4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    const-string/jumbo v2, "&quot;"

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x6

    goto :goto_0

    :cond_4
    const/16 v3, 0x27

    if-ne v2, v3, :cond_5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    const-string/jumbo v2, "&apos;"

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x6

    goto :goto_0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/nuance/nmsp/client/sdk/common/util/Util;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lcom/nuance/nmsp/client/sdk/common/util/Util;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Final output: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->trace(Ljava/lang/Object;)V

    :cond_7
    return-object v0
.end method

.method public static getCodecStr(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->getValue()S

    move-result v0

    sget-object v1, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->PCM_16_8K:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->getValue()S

    move-result v1

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "E_ENC_PCM_16_8K"

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->PCM_16_11K:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->getValue()S

    move-result v1

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "E_ENC_PCM_16_11K"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "UNKOWN_CODEC"

    goto :goto_0
.end method

.method public static isAMRCodec(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isGSMCodec(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->getValue()S

    move-result v0

    sget-object v1, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->MS_GSM_FR:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->getValue()S

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMP3Codec(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isOpusCodec(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->getValue()S

    move-result v0

    sget-object v1, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->OPUS_16K:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->getValue()S

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPCMCodec(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->getValue()S

    move-result v0

    sget-object v1, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->PCM_16_8K:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->getValue()S

    move-result v1

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->PCM_16_11K:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->getValue()S

    move-result v1

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->PCM_16_16K:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->getValue()S

    move-result v1

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->PCM_16_32K:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->getValue()S

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSpeexCodec(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->getValue()S

    move-result v0

    sget-object v1, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->SPEEX_8K:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->getValue()S

    move-result v1

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->SPEEX_11K:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->getValue()S

    move-result v1

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->SPEEX_16K:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->getValue()S

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
