.class public Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXMessage;
.super Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;


# static fields
.field protected static final EnrollementSegment:S = 0x400s

.field protected static final EnrollmentAudio:S = 0x402s

.field protected static final QueryBegin:S = 0x202s

.field protected static final QueryEnd:S = 0x204s

.field protected static final QueryError:S = 0x7202s

.field protected static final QueryParameter:S = 0x203s

.field protected static final QueryResult:S = 0x7201s

.field protected static final QueryRetry:S = 0x7205s

.field private static final a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;


# instance fields
.field private b:S


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXMessage;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory;->getLog(Ljava/lang/Class;)Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXMessage;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    return-void
.end method

.method public constructor <init>(S)V
    .registers 2

    invoke-direct {p0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;-><init>()V

    iput-short p1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXMessage;->b:S

    return-void
.end method

.method public constructor <init>(S[B)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;-><init>([BZ)V

    iput-short p1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXMessage;->b:S

    return-void
.end method


# virtual methods
.method public getCommandCode()S
    .registers 2

    iget-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXMessage;->b:S

    return v0
.end method

.method public getMessage()[B
    .registers 2

    invoke-super {p0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public toByteArray()[B
    .registers 6

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXMessage;->b:S

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXMessage;->b:S

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :try_start_15
    invoke-super {p0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1c} :catch_21

    :goto_1c
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :catch_21
    move-exception v0

    sget-object v2, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXMessage;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "PDXMessage.toByteArray() "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ". "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    goto :goto_1c
.end method
