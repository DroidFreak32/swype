.class public Lcom/nuance/nmsp/client/sdk/common/protocols/XModeMsgHeader;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;


# instance fields
.field public cmd:S

.field public len:I

.field public protocol:B

.field public version:B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/nuance/nmsp/client/sdk/common/protocols/XModeMsgHeader;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory;->getLog(Ljava/lang/Class;)Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/nmsp/client/sdk/common/protocols/XModeMsgHeader;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    return-void
.end method

.method public constructor <init>(BBSI)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/protocols/XModeMsgHeader;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_48

    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/protocols/XModeMsgHeader;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Constructing XModeMsgHeader(protocol="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", version="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", cmd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_48
    iput-byte p1, p0, Lcom/nuance/nmsp/client/sdk/common/protocols/XModeMsgHeader;->protocol:B

    iput-byte p2, p0, Lcom/nuance/nmsp/client/sdk/common/protocols/XModeMsgHeader;->version:B

    iput-short p3, p0, Lcom/nuance/nmsp/client/sdk/common/protocols/XModeMsgHeader;->cmd:S

    iput p4, p0, Lcom/nuance/nmsp/client/sdk/common/protocols/XModeMsgHeader;->len:I

    return-void
.end method

.method public constructor <init>([B)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/protocols/XModeMsgHeader;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/protocols/XModeMsgHeader;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "Constructing XModeMsgHeader(byte[])"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/protocols/XModeMsgHeader;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0, p1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->traceBuffer([B)V

    :cond_18
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    iput-byte v0, p0, Lcom/nuance/nmsp/client/sdk/common/protocols/XModeMsgHeader;->protocol:B

    const/4 v0, 0x1

    aget-byte v0, p1, v0

    iput-byte v0, p0, Lcom/nuance/nmsp/client/sdk/common/protocols/XModeMsgHeader;->version:B

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/nuance/nmsp/client/sdk/common/util/ByteConversion;->bytesToShort([BI)S

    move-result v0

    iput-short v0, p0, Lcom/nuance/nmsp/client/sdk/common/protocols/XModeMsgHeader;->cmd:S

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/nuance/nmsp/client/sdk/common/util/ByteConversion;->bytesToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/common/protocols/XModeMsgHeader;->len:I

    return-void
.end method


# virtual methods
.method public getBytes()[B
    .registers 4

    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/protocols/XModeMsgHeader;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/protocols/XModeMsgHeader;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "XModeMsgHeader.getBytes()"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_10
    const/16 v0, 0x8

    new-array v0, v0, [B

    const/4 v1, 0x0

    iget-byte v2, p0, Lcom/nuance/nmsp/client/sdk/common/protocols/XModeMsgHeader;->protocol:B

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    iget-byte v2, p0, Lcom/nuance/nmsp/client/sdk/common/protocols/XModeMsgHeader;->version:B

    aput-byte v2, v0, v1

    iget-short v1, p0, Lcom/nuance/nmsp/client/sdk/common/protocols/XModeMsgHeader;->cmd:S

    const/4 v2, 0x2

    invoke-static {v1, v0, v2}, Lcom/nuance/nmsp/client/sdk/common/util/ByteConversion;->shortToBytes(S[BI)V

    iget v1, p0, Lcom/nuance/nmsp/client/sdk/common/protocols/XModeMsgHeader;->len:I

    const/4 v2, 0x4

    invoke-static {v1, v0, v2}, Lcom/nuance/nmsp/client/sdk/common/util/ByteConversion;->intToBytes(I[BI)V

    sget-object v1, Lcom/nuance/nmsp/client/sdk/common/protocols/XModeMsgHeader;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3f

    sget-object v1, Lcom/nuance/nmsp/client/sdk/common/protocols/XModeMsgHeader;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v2, "Generated: "

    invoke-virtual {v1, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->trace(Ljava/lang/Object;)V

    sget-object v1, Lcom/nuance/nmsp/client/sdk/common/protocols/XModeMsgHeader;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v1, v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->traceBuffer([B)V

    :cond_3f
    return-object v0
.end method
