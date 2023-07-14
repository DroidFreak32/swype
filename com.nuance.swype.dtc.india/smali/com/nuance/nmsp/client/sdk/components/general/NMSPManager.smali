.class public abstract Lcom/nuance/nmsp/client/sdk/components/general/NMSPManager;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;


# instance fields
.field protected gatewayIP:Ljava/lang/String;

.field protected gatewayPort:S

.field protected inputCodec:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

.field protected msgSys:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

.field protected outputCodec:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

.field public uid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/nuance/nmsp/client/sdk/components/general/NMSPManager;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory;->getLog(Ljava/lang/Class;)Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/nmsp/client/sdk/components/general/NMSPManager;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;SLjava/lang/String;Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/general/NMSPManager;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/general/NMSPManager;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "in NMSPManager() gateway IP ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] Port ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_3

    const-string/jumbo v0, " gatewayIP is null"

    :cond_1
    :goto_0
    if-gtz p2, :cond_2

    const-string/jumbo v0, " gatewayPort should be greater than 0"

    :cond_2
    if-eqz v0, :cond_4

    sget-object v1, Lcom/nuance/nmsp/client/sdk/components/general/NMSPManager;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "NMSPManager "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v0, " gatewayIP is empty"

    goto :goto_0

    :cond_4
    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/components/general/NMSPManager;->gatewayIP:Ljava/lang/String;

    iput-short p2, p0, Lcom/nuance/nmsp/client/sdk/components/general/NMSPManager;->gatewayPort:S

    iput-object p3, p0, Lcom/nuance/nmsp/client/sdk/components/general/NMSPManager;->uid:Ljava/lang/String;

    iput-object p4, p0, Lcom/nuance/nmsp/client/sdk/components/general/NMSPManager;->inputCodec:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    iput-object p5, p0, Lcom/nuance/nmsp/client/sdk/components/general/NMSPManager;->outputCodec:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    new-instance v0, Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM;

    invoke-direct {v0}, Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/general/NMSPManager;->msgSys:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    return-void
.end method

.method public static discoverAPN(Ljava/lang/String;S)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Unsupported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static verifyAPN(Ljava/lang/String;Ljava/lang/String;S)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getGatewayIP()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/general/NMSPManager;->gatewayIP:Ljava/lang/String;

    return-object v0
.end method

.method public getGatewayPort()S
    .locals 1

    iget-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/general/NMSPManager;->gatewayPort:S

    return v0
.end method

.method public getInputCodec()Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/general/NMSPManager;->inputCodec:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    return-object v0
.end method

.method public getMsgSys()Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/general/NMSPManager;->msgSys:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    return-object v0
.end method

.method public getOutputCodec()Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/general/NMSPManager;->outputCodec:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/general/NMSPManager;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public setInputCodec(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/components/general/NMSPManager;->inputCodec:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    return-void
.end method

.method public setOutputCodec(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/components/general/NMSPManager;->outputCodec:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    return-void
.end method

.method public abstract shutdown()V
.end method
