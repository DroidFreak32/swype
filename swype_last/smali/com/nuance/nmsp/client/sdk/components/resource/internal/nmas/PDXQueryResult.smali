.class public Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryResult;
.super Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXMessage;

# interfaces
.implements Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryResult;


# static fields
.field private static final a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;


# instance fields
.field private final b:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryResult;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory;->getLog(Ljava/lang/Class;)Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryResult;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    return-void
.end method

.method public constructor <init>([B)V
    .registers 3

    const/16 v0, 0x7201

    invoke-direct {p0, v0, p1}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXMessage;-><init>(S[B)V

    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryResult;->b:[B

    return-void
.end method


# virtual methods
.method public getRawInput()[B
    .registers 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryResult;->b:[B

    return-object v0
.end method

.method public getResultType()Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryResult;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "PDXQueryResult.getResultType()"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    const-string/jumbo v0, "result_type"

    invoke-virtual {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryResult;->getUTF8String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    :goto_11
    return-object v0

    :cond_12
    const-string/jumbo v0, ""

    goto :goto_11
.end method

.method public isFinalResponse()Z
    .registers 4

    const/4 v0, 0x1

    :try_start_1
    const-string/jumbo v1, "final_response"

    invoke-virtual {p0, v1}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryResult;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    const-string/jumbo v1, "final_response"

    invoke-virtual {p0, v1}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryResult;->getInteger(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_14

    const/4 v0, 0x0

    :cond_14
    :goto_14
    return v0

    :cond_15
    sget-object v1, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryResult;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isInfoEnabled()Z

    move-result v1

    if-eqz v1, :cond_14

    sget-object v1, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryResult;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v2, "final_response does not exist. "

    invoke-virtual {v1, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->info(Ljava/lang/Object;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_25} :catch_26

    goto :goto_14

    :catch_26
    move-exception v1

    goto :goto_14
.end method
