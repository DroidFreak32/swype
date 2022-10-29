.class public Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryRetry;
.super Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXMessage;

# interfaces
.implements Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryRetry;


# static fields
.field private static final a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryRetry;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory;->getLog(Ljava/lang/Class;)Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryRetry;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    return-void
.end method

.method public constructor <init>([B)V
    .registers 3

    const/16 v0, 0x7205

    invoke-direct {p0, v0, p1}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXMessage;-><init>(S[B)V

    return-void
.end method


# virtual methods
.method public getCause()I
    .registers 3

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryRetry;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "PDXQueryRetry.getCause()"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :try_start_8
    const-string/jumbo v0, "cause"

    invoke-virtual {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryRetry;->getInteger(Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_e} :catch_10

    move-result v0

    :goto_f
    return v0

    :catch_10
    move-exception v0

    const/4 v0, 0x0

    goto :goto_f
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryRetry;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "PDXQueryRetry.getName()"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    const-string/jumbo v0, "name"

    invoke-virtual {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryRetry;->getUTF8String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    :goto_11
    return-object v0

    :cond_12
    const-string/jumbo v0, ""

    goto :goto_11
.end method

.method public getPrompt()Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryRetry;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "PDXQueryRetry.getPrompt()"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :try_start_8
    const-string/jumbo v0, "prompt"

    invoke-virtual {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryRetry;->getUTF8String(Ljava/lang/String;)Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_e} :catch_12

    move-result-object v0

    :goto_f
    if-eqz v0, :cond_17

    :goto_11
    return-object v0

    :catch_12
    move-exception v0

    const-string/jumbo v0, ""

    goto :goto_f

    :cond_17
    const-string/jumbo v0, ""

    goto :goto_11
.end method
