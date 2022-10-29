.class public Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageHandler;
.implements Lcom/nuance/nmsp/client/sdk/components/resource/common/Resource;
.implements Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSessionListener;


# static fields
.field public static final CALLLOG:B = 0x6t

.field protected static final CMD_FREE_RESOURCE:B = 0x3t

.field protected static final CMD_FREE_RESOURCE_ID:B = 0x4t

.field protected static final CMD_GET_PARAM:B = 0x2t

.field protected static final CMD_LOAD_RESOURCE:B = 0x0t

.field protected static final CMD_SET_PARAM:B = 0x1t

.field public static final DICT:B = 0x4t

.field protected static final FREE_RESOURCE_REQUEST:B = 0x3t

.field protected static final GET_PARAM_REQUEST:B = 0x2t

.field protected static final LOAD_RESOURCE_REQUEST:B = 0x0t

.field public static final NMAS:B = 0x5t

.field public static final NR9_RECO:B = 0x1t

.field public static final NR9_TTS:B = 0x2t

.field public static final OPER:B = 0x3t

.field protected static final RESOURCE_UNLOADED_EXCEPTION:Ljava/lang/String; = "the resource was unloaded. "

.field protected static final SET_PARAM_REQUEST:B = 0x1t

.field protected static final STATE_RESOURCE_LOADED:I = 0x2

.field protected static final STATE_RESOURCE_LOADING:I = 0x1

.field protected static final STATE_RESOURCE_UNLOADED:I

.field private static final a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

.field protected static final defaultReqId:J

.field private static e:J


# instance fields
.field private b:Lcom/nuance/nmsp/client/sdk/components/resource/common/ResourceListener;

.field private c:Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSessionListener;

.field private d:B

.field private f:Ljava/util/Hashtable;

.field protected inputCodec:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

.field public manager:Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;

.field protected messageSystem:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

.field protected outputCodec:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

.field public parameters:Ljava/util/Vector;

.field protected requestIds:Ljava/util/Hashtable;

.field protected resourceId:J

.field public resourceState:I

.field public session:Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;

.field public syncObject:Ljava/lang/Object;

.field public tranId:B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory;->getLog(Ljava/lang/Class;)Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-wide/16 v0, 0x1

    sput-wide v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->e:J

    return-void
.end method

.method public constructor <init>(Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/resource/common/ResourceListener;Ljava/util/Vector;B)V
    .registers 10

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->resourceState:I

    iput-byte v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->tranId:B

    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->manager:Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;

    invoke-virtual {p1}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;->getSession()Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->session:Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;

    iput-object p3, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->b:Lcom/nuance/nmsp/client/sdk/components/resource/common/ResourceListener;

    invoke-virtual {p1}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;->getInputCodec()Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->inputCodec:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-virtual {p1}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;->getOutputCodec()Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->outputCodec:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    iput-byte p5, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->d:B

    invoke-virtual {p1}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;->getMsgSys()Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->messageSystem:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->syncObject:Ljava/lang/Object;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->session:Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->getTransactionId()B

    move-result v1

    iput-byte v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->tranId:B

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->requestIds:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->f:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->session:Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->getResourceId()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->resourceId:J

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->parameters:Ljava/util/Vector;

    if-eqz p4, :cond_6e

    move v1, v0

    :goto_55
    invoke-virtual {p4}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_6e

    invoke-virtual {p4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->clone()Lcom/nuance/nmsp/client/sdk/components/general/Parameter;

    move-result-object v0

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->parameters:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_55

    :cond_6e
    return-void
.end method

.method private static a(Ljava/lang/String;)Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;
    .registers 2

    const-string/jumbo v0, "sdk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->SDK:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    :goto_b
    return-object v0

    :cond_c
    const-string/jumbo v0, "nmsp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->NMSP:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    goto :goto_b

    :cond_18
    const-string/jumbo v0, "app"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->APP:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    goto :goto_b

    :cond_24
    const-string/jumbo v0, "nss"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->NSS:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    goto :goto_b

    :cond_30
    const-string/jumbo v0, "slog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->SLOG:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    goto :goto_b

    :cond_3c
    const-string/jumbo v0, "nsslog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->NSSLOG:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    goto :goto_b

    :cond_48
    const-string/jumbo v0, "gwlog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_54

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->GWLOG:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    goto :goto_b

    :cond_54
    const-string/jumbo v0, "svsp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_60

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->SVSP:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    goto :goto_b

    :cond_60
    const-string/jumbo v0, "sip"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6c

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->SIP:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    goto :goto_b

    :cond_6c
    const-string/jumbo v0, "sdp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_78

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->SDP:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    goto :goto_b

    :cond_78
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private a(Ljava/util/Vector;J)V
    .registers 14

    const/4 v3, 0x2

    const/4 v9, 0x0

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->resourceState:I

    if-eq v0, v3, :cond_f

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->b:Lcom/nuance/nmsp/client/sdk/components/resource/common/ResourceListener;

    const/16 v1, 0x197

    const/16 v2, 0xe

    invoke-interface {v0, v1, v2, p2, p3}, Lcom/nuance/nmsp/client/sdk/components/resource/common/ResourceListener;->getParameterFailed(SSJ)V

    :cond_f
    new-array v4, v9, [B

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->requestIds:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p2, p3}, Ljava/lang/Long;-><init>(J)V

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->f:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p2, p3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "<gp><rid>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "</rid>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v1, v9

    move-object v2, v0

    :goto_43
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_a5

    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getType()Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    move-result-object v3

    sget-object v5, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->APP:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    if-eq v3, v5, :cond_6f

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getType()Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    move-result-object v3

    sget-object v5, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->NMSP:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    if-eq v3, v5, :cond_6f

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getType()Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    move-result-object v3

    sget-object v5, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->NSS:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    if-eq v3, v5, :cond_6f

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getType()Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    move-result-object v3

    sget-object v5, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->SVSP:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    if-ne v3, v5, :cond_a1

    :cond_6f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getType()Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " p=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\"/>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_a1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_43

    :cond_a5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "</gp>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->session:Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;

    const/16 v1, 0xa17

    const-string/jumbo v2, "SEND_BCP_GET_PARAMS"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    iget-byte v5, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->tranId:B

    iget-object v8, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->c:Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSessionListener;

    move-wide v6, p2

    invoke-virtual/range {v0 .. v9}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->postBcpMessage(SLjava/lang/String;[B[BBJLcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSessionListener;Z)V

    return-void
.end method

.method public static getDefaultRequestId()J
    .registers 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method


# virtual methods
.method public freeResource(I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmsp/client/sdk/components/resource/common/ResourceException;
        }
    .end annotation

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "freeResource, disconnect timeout: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->syncObject:Ljava/lang/Object;

    monitor-enter v1

    :try_start_18
    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->resourceState:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3f

    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->resourceState:I

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->messageSystem:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    new-instance v3, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;

    const/4 v4, 0x3

    invoke-direct {v3, v4, v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;-><init>(BLjava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v4, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->messageSystem:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    invoke-interface {v4}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->getVRAddr()[Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-interface {v2, v3, p0, v0, v4}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->send(Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageHandler;Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v1

    return-void

    :cond_3f
    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v2, "ResourceException the resource was unloaded. "

    invoke-virtual {v0, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/resource/common/ResourceException;

    const-string/jumbo v2, "the resource was unloaded. "

    invoke-direct {v0, v2}, Lcom/nuance/nmsp/client/sdk/components/resource/common/ResourceException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_50
    .catchall {:try_start_18 .. :try_end_50} :catchall_50

    :catchall_50
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public freeResourceId(I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmsp/client/sdk/components/resource/common/ResourceException;
        }
    .end annotation

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "freeResourceId, disconnect timeout: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->syncObject:Ljava/lang/Object;

    monitor-enter v1

    :try_start_18
    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->resourceState:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3f

    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->resourceState:I

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->messageSystem:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    new-instance v3, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;

    const/4 v4, 0x4

    invoke-direct {v3, v4, v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;-><init>(BLjava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v4, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->messageSystem:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    invoke-interface {v4}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->getVRAddr()[Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-interface {v2, v3, p0, v0, v4}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->send(Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageHandler;Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v1

    return-void

    :cond_3f
    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v2, "ResourceException the resource was unloaded. "

    invoke-virtual {v0, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/resource/common/ResourceException;

    const-string/jumbo v2, "the resource was unloaded. "

    invoke-direct {v0, v2}, Lcom/nuance/nmsp/client/sdk/components/resource/common/ResourceException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_50
    .catchall {:try_start_18 .. :try_end_50} :catchall_50

    :catchall_50
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getManager()Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;
    .registers 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->manager:Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;

    return-object v0
.end method

.method public getParams(Ljava/util/Vector;)J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmsp/client/sdk/components/resource/common/ResourceException;
        }
    .end annotation

    const/4 v0, 0x0

    sget-object v1, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v2, "getParams"

    invoke-virtual {v1, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    if-nez p1, :cond_1c

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "NullPointerException parameters is NULL. "

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "parameters can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    move v1, v0

    :goto_1d
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_9e

    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getType()Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    move-result-object v2

    sget-object v3, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->SDK:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    if-eq v2, v3, :cond_59

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getType()Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    move-result-object v2

    sget-object v3, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->SLOG:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    if-eq v2, v3, :cond_59

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getType()Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    move-result-object v2

    sget-object v3, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->NSSLOG:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    if-eq v2, v3, :cond_59

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getType()Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    move-result-object v2

    sget-object v3, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->GWLOG:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    if-eq v2, v3, :cond_59

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getType()Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    move-result-object v2

    sget-object v3, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->SIP:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    if-eq v2, v3, :cond_59

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getType()Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    move-result-object v2

    sget-object v3, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->SDP:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    if-ne v2, v3, :cond_9a

    :cond_59
    sget-object v1, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "IllegalArgumentException Parameter type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getType()Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " not allowed. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Parameter type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getType()Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " not allowed. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1d

    :cond_9e
    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->syncObject:Ljava/lang/Object;

    monitor-enter v1

    :try_start_a1
    invoke-virtual {p0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->getRequestId()J

    move-result-wide v2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v0, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, v2, v3}, Ljava/lang/Long;-><init>(J)V

    aput-object v5, v0, v4

    iget-object v4, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->messageSystem:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    new-instance v5, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;

    const/4 v6, 0x2

    invoke-direct {v5, v6, v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;-><init>(BLjava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v6, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->messageSystem:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    invoke-interface {v6}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->getVRAddr()[Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-interface {v4, v5, p0, v0, v6}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->send(Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageHandler;Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v1
    :try_end_cc
    .catchall {:try_start_a1 .. :try_end_cc} :catchall_cd

    return-wide v2

    :catchall_cd
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public declared-synchronized getRequestId()J
    .registers 7

    const-wide/16 v2, 0x1

    monitor-enter p0

    :try_start_3
    sget-wide v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->e:J

    add-long/2addr v2, v0

    sput-wide v2, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->e:J

    sget-wide v2, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->e:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v2, v2, v4

    if-nez v2, :cond_14

    const-wide/16 v2, 0x1

    sput-wide v2, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->e:J
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    :cond_14
    monitor-exit p0

    return-wide v0

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getResourceType()B
    .registers 2

    iget-byte v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->d:B

    return v0
.end method

.method public handleMessage(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 15

    check-cast p1, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;

    iget-byte v0, p1, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;->command:B

    packed-switch v0, :pswitch_data_25e

    :goto_7
    return-void

    :pswitch_8
    iget-object v0, p1, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;->data:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/util/Vector;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->resourceState:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_29

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->b:Lcom/nuance/nmsp/client/sdk/components/resource/common/ResourceListener;

    const/16 v1, 0x197

    const/16 v2, 0xe

    invoke-interface {v0, v1, v2, v6, v7}, Lcom/nuance/nmsp/client/sdk/components/resource/common/ResourceListener;->setParameterFailed(SSJ)V

    goto :goto_7

    :cond_29
    const/4 v9, 0x1

    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v0, 0x4

    new-array v8, v0, [B

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->requestIds:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, v6, v7}, Ljava/lang/Long;-><init>(J)V

    new-instance v4, Ljava/lang/Byte;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "<sp><rid>"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "</rid>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    move v4, v3

    move-object v3, v2

    move v2, v0

    :goto_5e
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_132

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getType()Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    move-result-object v5

    sget-object v11, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->APP:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    if-eq v5, v11, :cond_82

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getType()Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    move-result-object v5

    sget-object v11, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->NMSP:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    if-eq v5, v11, :cond_82

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getType()Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    move-result-object v5

    sget-object v11, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->NSS:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    if-ne v5, v11, :cond_d1

    :cond_82
    const/4 v9, 0x0

    new-instance v5, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getValue()[B

    move-result-object v11

    invoke-direct {v5, v11}, Ljava/lang/String;-><init>([B)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v11, "<"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getType()Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v11, " p=\""

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\" v=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v5}, Lcom/nuance/nmsp/client/sdk/common/util/Util;->escapeXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\"/>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_cd
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5e

    :cond_d1
    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getType()Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    move-result-object v5

    sget-object v11, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->SVSP:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    if-ne v5, v11, :cond_da

    const/4 v9, 0x0

    :cond_da
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "<"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getType()Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " p=\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "\" v=\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\"/>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getValue()[B

    move-result-object v0

    array-length v4, v0

    const/4 v11, 0x0

    invoke-static {v4, v8, v11}, Lcom/nuance/nmsp/client/sdk/common/util/ByteConversion;->intToBytes(I[BI)V

    const/4 v4, 0x0

    const/4 v11, 0x4

    invoke-virtual {v10, v8, v4, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 v4, 0x0

    array-length v11, v0

    invoke-virtual {v10, v0, v4, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    move v4, v5

    goto :goto_cd

    :cond_132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "</sp>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->session:Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;

    const/16 v1, 0xa15

    const-string/jumbo v2, "SEND_BCP_SET_PARAMS"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    iget-byte v5, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->tranId:B

    iget-object v8, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->c:Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSessionListener;

    invoke-virtual/range {v0 .. v9}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->postBcpMessage(SLjava/lang/String;[B[BBJLcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSessionListener;Z)V

    :try_start_15c
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_15f
    .catch Ljava/lang/Exception; {:try_start_15c .. :try_end_15f} :catch_161

    goto/16 :goto_7

    :catch_161
    move-exception v0

    goto/16 :goto_7

    :pswitch_164
    iget-object v0, p1, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;->data:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/util/Vector;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->a(Ljava/util/Vector;J)V

    goto/16 :goto_7

    :pswitch_17b
    iget-object v0, p1, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;->data:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->session:Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;

    iget-byte v2, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->tranId:B

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->c:Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSessionListener;

    invoke-virtual {v1, v2, v0, v3}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->freeResource(BILcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSessionListener;)V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->b:Lcom/nuance/nmsp/client/sdk/components/resource/common/ResourceListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/nuance/nmsp/client/sdk/components/resource/common/ResourceListener;->resourceUnloaded(S)V

    goto/16 :goto_7

    :pswitch_194
    iget-object v0, p1, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;->data:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->getRequestId()J

    move-result-wide v6

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "<fr><rid>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</rid>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "<n>1</n>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "<resids>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "<res1><id>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->resourceId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</id>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "<timeout>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "<timeout></res1>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "</resids>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "</fr>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->session:Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;

    const/16 v1, 0xa30

    const-string/jumbo v2, "SEND_BCP_FREE_RESOURCE_ID"

    const/4 v4, 0x0

    iget-byte v5, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->tranId:B

    iget-object v8, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->c:Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSessionListener;

    const/4 v9, 0x1

    invoke-virtual/range {v0 .. v9}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->postBcpMessage(SLjava/lang/String;[B[BBJLcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSessionListener;Z)V

    goto/16 :goto_7

    nop

    :pswitch_data_25e
    .packed-switch 0x1
        :pswitch_8
        :pswitch_164
        :pswitch_17b
        :pswitch_194
    .end packed-switch
.end method

.method public loadResource(Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSessionListener;Ljava/util/Vector;)V
    .registers 13

    const/4 v9, 0x0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "loadResource"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    new-instance v0, Lcom/nuance/nmsp/client/sdk/oem/BluetoothSystemOEM;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->parameters:Ljava/util/Vector;

    invoke-direct {v0, v1}, Lcom/nuance/nmsp/client/sdk/oem/BluetoothSystemOEM;-><init>(Ljava/util/Vector;)V

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/oem/BluetoothSystemOEM;->isBluetoothHeadsetConnected()Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->inputCodec:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/common/util/Util;->adjustCodecForBluetooth(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->inputCodec:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->outputCodec:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/common/util/Util;->adjustCodecForBluetooth(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->outputCodec:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->manager:Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->inputCodec:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;->setInputCodec(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->manager:Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->outputCodec:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;->setOutputCodec(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)V

    :cond_38
    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->c:Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSessionListener;

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->session:Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;

    invoke-virtual {v0, p1}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->setSessionListener(Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSessionListener;)V

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->resourceState:I

    if-nez v0, :cond_94

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->session:Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->getSessionId()[B

    move-result-object v0

    if-eqz v0, :cond_95

    const/4 v0, 0x2

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->resourceState:I

    :goto_4e
    invoke-virtual {p0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->getRequestId()J

    move-result-wide v6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "<lr><rid>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "</rid>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-byte v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->d:B

    packed-switch v1, :pswitch_data_18e

    :goto_6e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "</lr>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->session:Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;

    const/16 v1, 0xa27

    const-string/jumbo v2, "SEND_BCP_LOAD_RESOURCE"

    const/4 v4, 0x0

    iget-byte v5, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->tranId:B

    move-object v8, p1

    invoke-virtual/range {v0 .. v9}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->postBcpMessage(SLjava/lang/String;[B[BBJLcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSessionListener;Z)V

    :cond_94
    :pswitch_94
    return-void

    :cond_95
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->session:Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->inputCodec:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->outputCodec:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->connect(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->resourceState:I

    goto :goto_4e

    :pswitch_a2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "<nr9><reco/></nr9>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6e

    :pswitch_b7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "<nr9><tts/></nr9>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6e

    :pswitch_cc
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "<oper></oper>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6e

    :pswitch_e1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "<dict>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_177

    move v1, v9

    move-object v2, v0

    :goto_f9
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_178

    invoke-virtual {p2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getType()Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    move-result-object v3

    sget-object v4, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->SIP:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    if-eq v3, v4, :cond_125

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getType()Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    move-result-object v3

    sget-object v4, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->SDP:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    if-eq v3, v4, :cond_125

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getType()Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    move-result-object v3

    sget-object v4, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->APP:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    if-eq v3, v4, :cond_125

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getType()Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    move-result-object v3

    sget-object v4, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->NSS:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    if-ne v3, v4, :cond_173

    :cond_125
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getValue()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "<"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getType()Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " p=\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\" v=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Lcom/nuance/nmsp/client/sdk/common/util/Util;->escapeXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\"/>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_173
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f9

    :cond_177
    move-object v2, v0

    :cond_178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "</dict>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6e

    :pswitch_data_18e
    .packed-switch 0x1
        :pswitch_a2
        :pswitch_b7
        :pswitch_cc
        :pswitch_e1
        :pswitch_94
    .end packed-switch
.end method

.method public onBcpData(BJ[B)V
    .registers 5

    return-void
.end method

.method public onBcpEvent(BS)V
    .registers 10

    const/16 v6, 0x197

    const/16 v3, 0xe

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onBcpEvent, TID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", event code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->resourceState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6c

    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->resourceState:I

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->requestIds:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    :goto_32
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->requestIds:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    packed-switch v1, :pswitch_data_6e

    goto :goto_32

    :pswitch_4e
    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->b:Lcom/nuance/nmsp/client/sdk/components/resource/common/ResourceListener;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v1, v6, v3, v4, v5}, Lcom/nuance/nmsp/client/sdk/components/resource/common/ResourceListener;->setParameterFailed(SSJ)V

    goto :goto_32

    :pswitch_58
    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->b:Lcom/nuance/nmsp/client/sdk/components/resource/common/ResourceListener;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v1, v6, v3, v4, v5}, Lcom/nuance/nmsp/client/sdk/components/resource/common/ResourceListener;->getParameterFailed(SSJ)V

    goto :goto_32

    :cond_62
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->b:Lcom/nuance/nmsp/client/sdk/components/resource/common/ResourceListener;

    invoke-interface {v0, p2}, Lcom/nuance/nmsp/client/sdk/components/resource/common/ResourceListener;->resourceUnloaded(S)V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->session:Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;

    invoke-virtual {v0, p0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->removeSessionListener(Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSessionListener;)V

    :cond_6c
    return-void

    nop

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_4e
        :pswitch_58
    .end packed-switch
.end method

.method public onBcpFreeResourceId()V
    .registers 3

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->b:Lcom/nuance/nmsp/client/sdk/components/resource/common/ResourceListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/nuance/nmsp/client/sdk/components/resource/common/ResourceListener;->resourceUnloaded(S)V

    return-void
.end method

.method public onBcpGenerateAudioComplete(BJJS)V
    .registers 7

    return-void
.end method

.method public onBcpGetParamsComplete(BJS[B)V
    .registers 16

    const/4 v1, 0x0

    const/4 v8, -0x1

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onBcpGetParamsComplete, TID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", RID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->requestIds:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, p2, p3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_56

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onBcpGetParamsComplete, RID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " already removed!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->warn(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->f:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p2, p3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_55
    return-void

    :cond_56
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->f:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, p2, p3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    if-nez v0, :cond_7b

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Could not find the grammars associated with RID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    goto :goto_55

    :cond_7b
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p5}, Ljava/lang/String;-><init>([B)V

    const-string/jumbo v2, ";"

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_109

    const/4 v2, 0x1

    move v9, v1

    move v1, v2

    move v2, v9

    :goto_8d
    const-string/jumbo v3, ";"

    invoke-virtual {v4, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v8, :cond_c4

    invoke-virtual {v4, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v1, ":"

    invoke-virtual {v5, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v8, :cond_bd

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;

    new-instance v6, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getType()Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    move-result-object v1

    invoke-direct {v6, v7, v5, v1}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;)V

    invoke-virtual {v0, v6, v2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    :cond_bd
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v3

    goto :goto_8d

    :cond_c4
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_f1

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v8, :cond_f1

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;

    new-instance v4, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getType()Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    move-result-object v1

    invoke-direct {v4, v5, v3, v1}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;)V

    invoke-virtual {v0, v4, v2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    :cond_f1
    const/16 v1, 0xc8

    if-eq p4, v1, :cond_f9

    const/16 v1, 0xc9

    if-ne p4, v1, :cond_100

    :cond_f9
    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->b:Lcom/nuance/nmsp/client/sdk/components/resource/common/ResourceListener;

    invoke-interface {v1, p4, v0, p2, p3}, Lcom/nuance/nmsp/client/sdk/components/resource/common/ResourceListener;->getParameterCompleted(SLjava/util/Vector;J)V

    goto/16 :goto_55

    :cond_100
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->b:Lcom/nuance/nmsp/client/sdk/components/resource/common/ResourceListener;

    const/16 v1, 0x7fff

    invoke-interface {v0, p4, v1, p2, p3}, Lcom/nuance/nmsp/client/sdk/components/resource/common/ResourceListener;->getParameterFailed(SSJ)V

    goto/16 :goto_55

    :cond_109
    move v2, v1

    goto :goto_8d
.end method

.method public onBcpRecognitionComplete(BJS[B)V
    .registers 6

    return-void
.end method

.method public onBcpRecognitionIntermediateResults(BJS[B)V
    .registers 6

    return-void
.end method

.method public onBcpResponse(BJSSS)V
    .registers 11

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onBcpResponse, TID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", RID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", status code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , request state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", completion cause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    const/16 v0, 0xc8

    if-eq p4, v0, :cond_5b

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->requestIds:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p2, p3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    if-eqz v0, :cond_5b

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    packed-switch v0, :pswitch_data_7c

    :cond_5b
    :goto_5b
    return-void

    :pswitch_5c
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->requestIds:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p2, p3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->b:Lcom/nuance/nmsp/client/sdk/components/resource/common/ResourceListener;

    invoke-interface {v0, p4, p6, p2, p3}, Lcom/nuance/nmsp/client/sdk/components/resource/common/ResourceListener;->setParameterFailed(SSJ)V

    goto :goto_5b

    :pswitch_6c
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->requestIds:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p2, p3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->b:Lcom/nuance/nmsp/client/sdk/components/resource/common/ResourceListener;

    invoke-interface {v0, p4, p6, p2, p3}, Lcom/nuance/nmsp/client/sdk/components/resource/common/ResourceListener;->getParameterFailed(SSJ)V

    goto :goto_5b

    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_5c
        :pswitch_6c
    .end packed-switch
.end method

.method public onBcpSetParamsComplete(BJS[B)V
    .registers 16

    const/4 v1, 0x0

    const/4 v8, -0x1

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onBcpSetParamsComplete, TID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", RID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", status code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->requestIds:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, p2, p3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_57

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onBcpSetParamsComplete, RID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " already removed!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->warn(Ljava/lang/Object;)V

    :goto_56
    return-void

    :cond_57
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    if-eqz p5, :cond_c5

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p5}, Ljava/lang/String;-><init>([B)V

    const-string/jumbo v0, ";"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_dc

    const/4 v0, 0x1

    :goto_6d
    const-string/jumbo v4, ";"

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v8, :cond_9c

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "."

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v8, :cond_99

    new-instance v6, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->a(Ljava/lang/String;)Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    move-result-object v0

    invoke-direct {v6, v7, v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;-><init>(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;)V

    invoke-virtual {v2, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_99
    add-int/lit8 v0, v4, 0x1

    goto :goto_6d

    :cond_9c
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_c5

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v8, :cond_c5

    new-instance v4, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->a(Ljava/lang/String;)Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    move-result-object v0

    invoke-direct {v4, v5, v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;-><init>(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;)V

    invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_c5
    const/16 v0, 0xc8

    if-eq p4, v0, :cond_cd

    const/16 v0, 0xc9

    if-ne p4, v0, :cond_d3

    :cond_cd
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->b:Lcom/nuance/nmsp/client/sdk/components/resource/common/ResourceListener;

    invoke-interface {v0, p4, v2, p2, p3}, Lcom/nuance/nmsp/client/sdk/components/resource/common/ResourceListener;->setParameterCompleted(SLjava/util/Vector;J)V

    goto :goto_56

    :cond_d3
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->b:Lcom/nuance/nmsp/client/sdk/components/resource/common/ResourceListener;

    const/16 v1, 0x7fff

    invoke-interface {v0, p4, v1, p2, p3}, Lcom/nuance/nmsp/client/sdk/components/resource/common/ResourceListener;->setParameterFailed(SSJ)V

    goto/16 :goto_56

    :cond_dc
    move v0, v1

    goto :goto_6d
.end method

.method public onMsgNotSent(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    return-void
.end method

.method public onMsgSent(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    return-void
.end method

.method public onSessionConnected([B)V
    .registers 5

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onSessionConnected, SID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_1d
    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->syncObject:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x2

    :try_start_21
    iput v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->resourceState:I

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_25

    return-void

    :catchall_25
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onSessionDisconnected(S)V
    .registers 10

    const/16 v7, 0x197

    const/16 v6, 0xe

    const/4 v0, 0x0

    const/4 v1, 0x1

    sget-object v2, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_23

    sget-object v2, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onSessionDisconnected, reason code: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_23
    packed-switch p1, :pswitch_data_80

    :pswitch_26
    move v2, v1

    :goto_27
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->requestIds:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    :goto_2d
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->requestIds:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    packed-switch v1, :pswitch_data_92

    goto :goto_2d

    :pswitch_49
    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->b:Lcom/nuance/nmsp/client/sdk/components/resource/common/ResourceListener;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v1, v7, v6, v4, v5}, Lcom/nuance/nmsp/client/sdk/components/resource/common/ResourceListener;->setParameterFailed(SSJ)V

    goto :goto_2d

    :pswitch_53
    move v2, v0

    goto :goto_27

    :pswitch_55
    const/4 v0, 0x3

    move v2, v0

    goto :goto_27

    :pswitch_58
    move v2, v1

    goto :goto_27

    :pswitch_5a
    move v2, v1

    goto :goto_27

    :pswitch_5c
    const/4 v0, 0x6

    move v2, v0

    goto :goto_27

    :pswitch_5f
    move v2, v1

    goto :goto_27

    :pswitch_61
    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->b:Lcom/nuance/nmsp/client/sdk/components/resource/common/ResourceListener;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v1, v7, v6, v4, v5}, Lcom/nuance/nmsp/client/sdk/components/resource/common/ResourceListener;->getParameterFailed(SSJ)V

    goto :goto_2d

    :cond_6b
    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->syncObject:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6e
    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->resourceState:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_78

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->b:Lcom/nuance/nmsp/client/sdk/components/resource/common/ResourceListener;

    invoke-interface {v0, v2}, Lcom/nuance/nmsp/client/sdk/components/resource/common/ResourceListener;->resourceUnloaded(S)V

    :cond_78
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->resourceState:I

    monitor-exit v1
    :try_end_7c
    .catchall {:try_start_6e .. :try_end_7c} :catchall_7d

    return-void

    :catchall_7d
    move-exception v0

    monitor-exit v1

    throw v0

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_53
        :pswitch_26
        :pswitch_55
        :pswitch_58
        :pswitch_5a
        :pswitch_5c
        :pswitch_5f
    .end packed-switch

    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_49
        :pswitch_61
    .end packed-switch
.end method

.method public onVapPlayBeginReceived()V
    .registers 1

    return-void
.end method

.method public onVapPlayEndReceived()V
    .registers 1

    return-void
.end method

.method public onVapPlayReceived()V
    .registers 1

    return-void
.end method

.method public onVapSending()V
    .registers 1

    return-void
.end method

.method public setParams(Ljava/util/Vector;)J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmsp/client/sdk/components/resource/common/ResourceException;
        }
    .end annotation

    const/4 v0, 0x0

    sget-object v1, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v2, "setParams"

    invoke-virtual {v1, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    if-nez p1, :cond_1c

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "NullPointerException parameters is NULL. "

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "parameters can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    move v1, v0

    :goto_1d
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_76

    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getType()Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    move-result-object v2

    sget-object v3, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->SDK:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    if-ne v2, v3, :cond_72

    sget-object v1, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "IllegalArgumentException Parameter type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getType()Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " not allowed. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Parameter type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getType()Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " not allowed. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_72
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1d

    :cond_76
    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->syncObject:Ljava/lang/Object;

    monitor-enter v1

    :try_start_79
    invoke-virtual {p0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->getRequestId()J

    move-result-wide v2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v0, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, v2, v3}, Ljava/lang/Long;-><init>(J)V

    aput-object v5, v0, v4

    iget-object v4, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->messageSystem:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    new-instance v5, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;

    const/4 v6, 0x1

    invoke-direct {v5, v6, v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;-><init>(BLjava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v6, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->messageSystem:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    invoke-interface {v6}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->getVRAddr()[Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-interface {v4, v5, p0, v0, v6}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->send(Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageHandler;Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v1
    :try_end_a4
    .catchall {:try_start_79 .. :try_end_a4} :catchall_a5

    return-wide v2

    :catchall_a5
    move-exception v0

    monitor-exit v1

    throw v0
.end method
