.class public Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryEnd;
.super Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXMessage;


# static fields
.field private static final a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryEnd;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory;->getLog(Ljava/lang/Class;)Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryEnd;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/16 v0, 0x204

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXMessage;-><init>(S)V

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryEnd;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryEnd;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "PDXQueryEnd()"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_15
    return-void
.end method
