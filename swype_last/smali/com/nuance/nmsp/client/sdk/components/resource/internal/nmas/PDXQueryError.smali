.class public Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryError;
.super Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXMessage;

# interfaces
.implements Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryError;


# static fields
.field private static final a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryError;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory;->getLog(Ljava/lang/Class;)Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryError;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    return-void
.end method

.method public constructor <init>([B)V
    .registers 3

    const/16 v0, 0x7202

    invoke-direct {p0, v0, p1}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXMessage;-><init>(S[B)V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryError;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "PDXQueryError.getDescription()"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    const-string/jumbo v0, "description"

    invoke-virtual {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryError;->getUTF8String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    :goto_11
    return-object v0

    :cond_12
    const-string/jumbo v0, ""

    goto :goto_11
.end method

.method public getError()I
    .registers 3

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryError;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "PDXQueryError.getError()"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    const-string/jumbo v0, "error"

    invoke-virtual {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryError;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
