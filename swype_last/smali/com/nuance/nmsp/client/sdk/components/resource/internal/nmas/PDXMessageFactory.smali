.class public Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXMessageFactory;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXMessageFactory;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory;->getLog(Ljava/lang/Class;)Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXMessageFactory;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createMessage([B)Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXMessage;
    .registers 7

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    aget-byte v2, p0, v5

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    int-to-short v1, v1

    array-length v2, p0

    add-int/lit8 v2, v2, -0x2

    new-array v2, v2, [B

    const/4 v3, 0x2

    array-length v4, v2

    invoke-static {p0, v3, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    packed-switch v1, :pswitch_data_4c

    :pswitch_1c
    sget-object v2, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXMessageFactory;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "PDXMessageFactory.createMessage() Unknown command: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ". "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    :goto_38
    return-object v0

    :pswitch_39
    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryResult;

    invoke-direct {v0, v2}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryResult;-><init>([B)V

    goto :goto_38

    :pswitch_3f
    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryError;

    invoke-direct {v0, v2}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryError;-><init>([B)V

    goto :goto_38

    :pswitch_45
    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryRetry;

    invoke-direct {v0, v2}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryRetry;-><init>([B)V

    goto :goto_38

    nop

    :pswitch_data_4c
    .packed-switch 0x7201
        :pswitch_39
        :pswitch_3f
        :pswitch_1c
        :pswitch_1c
        :pswitch_45
    .end packed-switch
.end method
