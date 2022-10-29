.class public Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXUTF8String;
.super Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXClass;


# static fields
.field private static final a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXUTF8String;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory;->getLog(Ljava/lang/Class;)Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXUTF8String;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/16 v0, 0xc1

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXClass;-><init>(S)V

    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXUTF8String;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([B)V
    .registers 6

    const/16 v0, 0xc1

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXClass;-><init>(S)V

    :try_start_5
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXUTF8String;->b:Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f} :catch_10

    :goto_f
    return-void

    :catch_10
    move-exception v0

    sget-object v1, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXUTF8String;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "PDXUTF8String() "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXUTF8String;->b:Ljava/lang/String;

    goto :goto_f
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXUTF8String;->b:Ljava/lang/String;

    return-object v0
.end method

.method public toByteArray()[B
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXUTF8String;->b:Ljava/lang/String;

    const-string/jumbo v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-super {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXClass;->toByteArray([B)[B
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_e

    move-result-object v0

    :goto_d
    return-object v0

    :catch_e
    move-exception v0

    sget-object v1, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXUTF8String;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "PDXUTF8String().toByteArray() "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXUTF8String;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-super {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXClass;->toByteArray([B)[B

    move-result-object v0

    goto :goto_d
.end method
