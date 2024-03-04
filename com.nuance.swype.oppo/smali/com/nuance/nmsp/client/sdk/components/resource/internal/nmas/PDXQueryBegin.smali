.class public Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryBegin;
.super Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXMessage;


# static fields
.field private static final a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryBegin;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory;->getLog(Ljava/lang/Class;)Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryBegin;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;Ljava/lang/String;SSLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;)V
    .locals 5

    const/16 v1, 0x202

    invoke-direct {p0, v1}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXMessage;-><init>(S)V

    sget-object v1, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryBegin;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryBegin;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string v2, "PDXQueryBegin()"

    invoke-virtual {v1, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_0
    const-string v1, "uid"

    const/16 v2, 0xc1

    invoke-virtual {p0, v1, p1, v2}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryBegin;->put(Ljava/lang/String;Ljava/lang/String;S)V

    const-string v1, "pdx_version"

    const/16 v2, 0xc1

    invoke-virtual {p0, v1, p2, v2}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryBegin;->put(Ljava/lang/String;Ljava/lang/String;S)V

    const-string v1, "client_version"

    const/16 v2, 0xc1

    invoke-virtual {p0, v1, p3, v2}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryBegin;->put(Ljava/lang/String;Ljava/lang/String;S)V

    const-string v1, "script_version"

    const/16 v2, 0xc1

    invoke-virtual {p0, v1, p4, v2}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryBegin;->put(Ljava/lang/String;Ljava/lang/String;S)V

    const-string v1, "language"

    const/16 v2, 0xc1

    invoke-virtual {p0, v1, p5, v2}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryBegin;->put(Ljava/lang/String;Ljava/lang/String;S)V

    const-string v1, "region"

    const/16 v2, 0xc1

    invoke-virtual {p0, v1, p6, v2}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryBegin;->put(Ljava/lang/String;Ljava/lang/String;S)V

    const-string v1, "device_codec"

    invoke-virtual {p7}, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->getValue()S

    move-result v2

    const/16 v3, 0xc0

    invoke-virtual {p0, v1, v2, v3}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryBegin;->put(Ljava/lang/String;IS)V

    const-string v1, "dictation_language"

    const/16 v2, 0xc1

    invoke-virtual {p0, v1, p8, v2}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryBegin;->put(Ljava/lang/String;Ljava/lang/String;S)V

    const-string v1, "lcd_width"

    const/16 v2, 0xc0

    invoke-virtual {p0, v1, p9, v2}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryBegin;->put(Ljava/lang/String;IS)V

    const-string v1, "lcd_height"

    const/16 v2, 0xc0

    invoke-virtual {p0, v1, p10, v2}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryBegin;->put(Ljava/lang/String;IS)V

    if-nez p11, :cond_2

    const-string v1, "carrier"

    const/4 v2, 0x0

    new-array v2, v2, [B

    const/4 v3, 0x5

    invoke-virtual {p0, v1, v2, v3}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryBegin;->put(Ljava/lang/String;[BS)V

    :goto_0
    const-string v1, "phone_model"

    const/16 v2, 0xc1

    move-object/from16 v0, p12

    invoke-virtual {p0, v1, v0, v2}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryBegin;->put(Ljava/lang/String;Ljava/lang/String;S)V

    const-string v1, "phone_number"

    const/16 v2, 0xc1

    move-object/from16 v0, p13

    invoke-virtual {p0, v1, v0, v2}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryBegin;->put(Ljava/lang/String;Ljava/lang/String;S)V

    const-string v1, "original_session_id"

    const/16 v2, 0x16

    move-object/from16 v0, p14

    invoke-virtual {p0, v1, v0, v2}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryBegin;->put(Ljava/lang/String;Ljava/lang/String;S)V

    if-eqz p15, :cond_1

    const-string v1, "new_session_id"

    invoke-static/range {p15 .. p15}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->FormatUuid([B)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xc1

    invoke-virtual {p0, v1, v2, v3}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryBegin;->put(Ljava/lang/String;Ljava/lang/String;S)V

    :cond_1
    const-string v1, "application"

    const/16 v2, 0x16

    move-object/from16 v0, p16

    invoke-virtual {p0, v1, v0, v2}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryBegin;->put(Ljava/lang/String;Ljava/lang/String;S)V

    const-string v1, "nmaid"

    const/16 v2, 0x16

    move-object/from16 v0, p16

    invoke-virtual {p0, v1, v0, v2}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryBegin;->put(Ljava/lang/String;Ljava/lang/String;S)V

    const-string v1, "command"

    const/16 v2, 0x16

    move-object/from16 v0, p17

    invoke-virtual {p0, v1, v0, v2}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryBegin;->put(Ljava/lang/String;Ljava/lang/String;S)V

    if-eqz p18, :cond_3

    invoke-interface/range {p18 .. p18}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->keys()Ljava/util/Enumeration;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v2, p18

    check-cast v2, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;

    invoke-virtual {v2, v1}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->getClass(Ljava/lang/String;)Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXClass;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXClass;->getType()S

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    move-object/from16 v0, p18

    invoke-interface {v0, v1}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->getByteString(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v4, 0x4

    invoke-virtual {p0, v1, v2, v4}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryBegin;->put(Ljava/lang/String;[BS)V

    goto :goto_1

    :cond_2
    const-string v1, "carrier"

    const/16 v2, 0xc1

    move-object/from16 v0, p11

    invoke-virtual {p0, v1, v0, v2}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryBegin;->put(Ljava/lang/String;Ljava/lang/String;S)V

    goto :goto_0

    :sswitch_1
    move-object/from16 v0, p18

    invoke-interface {v0, v1}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->getAsciiString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x16

    invoke-virtual {p0, v1, v2, v4}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryBegin;->put(Ljava/lang/String;Ljava/lang/String;S)V

    goto :goto_1

    :sswitch_2
    move-object/from16 v0, p18

    invoke-interface {v0, v1}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->getInteger(Ljava/lang/String;)I

    move-result v2

    const/16 v4, 0xc0

    invoke-virtual {p0, v1, v2, v4}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryBegin;->put(Ljava/lang/String;IS)V

    goto :goto_1

    :sswitch_3
    move-object/from16 v0, p18

    invoke-interface {v0, v1}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->getUTF8String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xc1

    invoke-virtual {p0, v1, v2, v4}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryBegin;->put(Ljava/lang/String;Ljava/lang/String;S)V

    goto :goto_1

    :sswitch_4
    const/4 v2, 0x0

    const/4 v4, 0x5

    invoke-virtual {p0, v1, v2, v4}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryBegin;->put(Ljava/lang/String;[BS)V

    goto :goto_1

    :sswitch_5
    sget-object v1, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryBegin;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string v2, "PDXQueryBegin() Dictionary not accepted in optionalKeys"

    invoke-virtual {v1, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    goto :goto_1

    :sswitch_6
    sget-object v1, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryBegin;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string v2, "PDXQueryBegin() Sequence not accepted in optionalKeys"

    invoke-virtual {v1, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    return-void

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x5 -> :sswitch_4
        0x10 -> :sswitch_6
        0x16 -> :sswitch_1
        0xc0 -> :sswitch_2
        0xc1 -> :sswitch_3
        0xe0 -> :sswitch_5
    .end sparse-switch
.end method
