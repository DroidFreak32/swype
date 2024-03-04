.class public Lcom/nuance/nmsp/client/sdk/components/core/XMode;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageHandler;
.implements Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$CloseSocketCallback;
.implements Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$OpenSocketCallback;
.implements Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$ReadSocketCallback;
.implements Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$WriteSocketCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/nmsp/client/sdk/components/core/XMode$a;,
        Lcom/nuance/nmsp/client/sdk/components/core/XMode$XModeListener;
    }
.end annotation


# static fields
.field public static final NET_CONTEXT_SEND_BCP_BEGIN:Ljava/lang/String; = "SEND_BCP_BEGIN"

.field public static final NET_CONTEXT_SEND_BCP_CANCEL:Ljava/lang/String; = "SEND_BCP_CANCEL"

.field public static final NET_CONTEXT_SEND_BCP_DATA:Ljava/lang/String; = "SEND_BCP_DATA"

.field public static final NET_CONTEXT_SEND_BCP_FREE_RESOURCE:Ljava/lang/String; = "SEND_BCP_FREE_RESOURCE"

.field public static final NET_CONTEXT_SEND_BCP_FREE_RESOURCE_ID:Ljava/lang/String; = "SEND_BCP_FREE_RESOURCE_ID"

.field public static final NET_CONTEXT_SEND_BCP_GENERATE_AUDIO:Ljava/lang/String; = "SEND_BCP_GENERATE_AUDIO"

.field public static final NET_CONTEXT_SEND_BCP_GET_PARAMS:Ljava/lang/String; = "SEND_BCP_GET_PARAMS"

.field public static final NET_CONTEXT_SEND_BCP_LOAD_GRAMMAR:Ljava/lang/String; = "SEND_BCP_LOAD_GRAMMAR"

.field public static final NET_CONTEXT_SEND_BCP_LOAD_RESOURCE:Ljava/lang/String; = "SEND_BCP_LOAD_RESOURCE"

.field public static final NET_CONTEXT_SEND_BCP_LOG:Ljava/lang/String; = "SEND_BCP_LOG"

.field public static final NET_CONTEXT_SEND_BCP_RECOGNIZE:Ljava/lang/String; = "SEND_BCP_RECOGNIZE"

.field public static final NET_CONTEXT_SEND_BCP_SET_PARAMS:Ljava/lang/String; = "SEND_BCP_SET_PARAMS"

.field public static final SEND_MSG_PRIORITY_HIGH:I = 0x3

.field public static final SEND_MSG_PRIORITY_LOW:I = 0x1

.field public static final STATE_CLOSED:B = 0x3t

.field public static final STATE_CLOSING:B = 0x2t

.field public static final STATE_CONNECTED:B = 0x1t

.field public static final STATE_CONNECTING:B = 0x0t

.field public static final XMODE_SESSION_IDLE_FOR_TOO_LONG:S = 0x3s

.field public static final XMODE_SOCKET_CLOSED_COP_CONNECT_FAILED:S = 0x7s

.field public static final XMODE_SOCKET_CLOSED_COP_CONNECT_TIMEOUT:S = 0x5s

.field public static final XMODE_SOCKET_CLOSED_COP_DISCONNECT:S = 0x6s

.field public static final XMODE_SOCKET_CLOSED_DISCONNECT:S = 0x1s

.field public static final XMODE_SOCKET_CLOSED_NETWORK_ERROR:S = 0x8s

.field public static final XMODE_SOCKET_CLOSED_OPEN_SOCKET_FAILED:S = 0x4s

.field public static final XMODE_SOCKET_CLOSED_REMOTE_DISCONNECT:S

.field private static a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;


# instance fields
.field private b:Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

.field private c:I

.field private d:Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

.field private e:I

.field private f:Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

.field private g:Ljava/util/Vector;

.field private h:Z

.field private i:Ljava/util/Vector;

.field protected inputCodec:S

.field private j:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

.field private k:Ljava/lang/Object;

.field private l:Lcom/nuance/nmsp/client/sdk/common/protocols/XModeMsgHeader;

.field private m:S

.field private n:S

.field private o:Ljava/lang/String;

.field protected outputCodec:S

.field private p:Ljava/lang/String;

.field protected pingRequestId:I

.field protected port:S

.field private q:[B

.field private r:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem;

.field private s:Ljava/lang/String;

.field protected server:Ljava/lang/String;

.field public sessionId:[B

.field protected state:B

.field private t:Lcom/nuance/nmsp/client/sdk/components/core/XMode$XModeListener;

.field private u:Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;

.field private v:Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl;

.field private w:Ljava/util/Queue;

.field private x:Ljava/util/Queue;

.field private y:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory;->getLog(Ljava/lang/Class;)Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;SLjava/lang/String;[BLjava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/XMode$XModeListener;Ljava/util/Vector;Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1e

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->c:I

    const/16 v0, 0x32

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->e:I

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->server:Ljava/lang/String;

    iput-short v2, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->port:S

    iput-boolean v2, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->h:Z

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->i:Ljava/util/Vector;

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->j:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->l:Lcom/nuance/nmsp/client/sdk/common/protocols/XModeMsgHeader;

    iput-short v2, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->m:S

    const/16 v0, 0x9

    iput-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->n:S

    const-string v0, "Not specified"

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->o:Ljava/lang/String;

    const-string v0, "Not specified"

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->p:Ljava/lang/String;

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->q:[B

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->r:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem;

    const-string v0, ""

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->s:Ljava/lang/String;

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->v:Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->w:Ljava/util/Queue;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->x:Ljava/util/Queue;

    iput-boolean v2, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->y:Z

    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->server:Ljava/lang/String;

    iput-short p2, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->port:S

    iput-object p3, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->o:Ljava/lang/String;

    iput-object p4, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->q:[B

    iput-object p5, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->p:Ljava/lang/String;

    iput-object p6, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->t:Lcom/nuance/nmsp/client/sdk/components/core/XMode$XModeListener;

    if-eqz p7, :cond_3

    iput-object p7, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->g:Ljava/util/Vector;

    :goto_0
    iput-object p8, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->j:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "XMode() server: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " port: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->g:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;

    sget-object v2, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "XMode() "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getType()Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getValue()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getType()Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    move-result-object v2

    sget-object v3, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->SDK:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IdleSessionTimeout"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getValue()[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->e:I

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->g:Ljava/util/Vector;

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ConnectionTimeout"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getValue()[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->c:I

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SSL_Socket_Enable"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SSL_Cert_Summary"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SSL_Cert_Data"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SSL_SelfSigned_Cert"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_6
    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SSL_Socket_Enable"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getValue()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    const-string v3, "TRUE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getValue()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->h:Z

    :cond_8
    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->i:Ljava/util/Vector;

    if-nez v2, :cond_9

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->i:Ljava/util/Vector;

    :cond_9
    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->i:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_a
    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->state:B

    return-void
.end method

.method static synthetic a(Lcom/nuance/nmsp/client/sdk/components/core/XMode;)I
    .locals 1

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->e:I

    return v0
.end method

.method static synthetic a()Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;
    .locals 1

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    return-object v0
.end method

.method static synthetic a(Lcom/nuance/nmsp/client/sdk/components/core/XMode;Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl;)Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->v:Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl;

    return-object v0
.end method

.method static synthetic a(Lcom/nuance/nmsp/client/sdk/components/core/XMode;S)S
    .locals 1

    const/4 v0, 0x3

    iput-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->m:S

    return v0
.end method

.method private a(BLjava/lang/Object;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->j:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    new-instance v1, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;

    invoke-direct {v1, p1, p2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;-><init>(BLjava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->j:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    invoke-interface {v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->getVRAddr()[Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-interface {v0, v1, p0, v2, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->send(Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageHandler;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "XMode.sendCmdMsg() "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private a(Lcom/nuance/nmsp/client/sdk/common/protocols/XModeMsgHeader;[B)V
    .locals 8

    const/16 v7, 0x10

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "XMode.parseXModeMsg() protocol: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v2, p1, Lcom/nuance/nmsp/client/sdk/common/protocols/XModeMsgHeader;->protocol:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cmd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p1, Lcom/nuance/nmsp/client/sdk/common/protocols/XModeMsgHeader;->cmd:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_0
    iget-byte v0, p1, Lcom/nuance/nmsp/client/sdk/common/protocols/XModeMsgHeader;->protocol:B

    sparse-switch v0, :sswitch_data_0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "XMode.parseXModeMsg() unknown protocol: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v2, p1, Lcom/nuance/nmsp/client/sdk/common/protocols/XModeMsgHeader;->protocol:B

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    iget-short v0, p1, Lcom/nuance/nmsp/client/sdk/common/protocols/XModeMsgHeader;->cmd:S

    sparse-switch v0, :sswitch_data_1

    :goto_1
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->t:Lcom/nuance/nmsp/client/sdk/components/core/XMode$XModeListener;

    invoke-interface {v0, p1, p2}, Lcom/nuance/nmsp/client/sdk/components/core/XMode$XModeListener;->xmodeMsgCallback(Lcom/nuance/nmsp/client/sdk/common/protocols/XModeMsgHeader;[B)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->j:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->d:Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

    invoke-interface {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->cancelTask(Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;)Z

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->v:Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->v:Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl;->commit()Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;

    iput-object v4, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->v:Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl;

    :cond_2
    new-array v0, v7, [B

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->sessionId:[B

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->sessionId:[B

    invoke-static {p2, v3, v0, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->j:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->sessionId:[B

    invoke-interface {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->setSessionId([B)V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->r:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->k:Ljava/lang/Object;

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->sessionId:[B

    invoke-interface {v0, v1, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem;->setSessionId(Ljava/lang/Object;[B)V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->sessionId:[B

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->FormatUuid([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->s:Ljava/lang/String;

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->setCurrentSession(Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received COP_Connected "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_3
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a(BLjava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->t:Lcom/nuance/nmsp/client/sdk/components/core/XMode$XModeListener;

    invoke-interface {v0}, Lcom/nuance/nmsp/client/sdk/components/core/XMode$XModeListener;->copConnected()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->unsetCurrentSession()V

    const-string v0, "SocketOpened"

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode$6;

    invoke-direct {v0, p0}, Lcom/nuance/nmsp/client/sdk/components/core/XMode$6;-><init>(Lcom/nuance/nmsp/client/sdk/components/core/XMode;)V

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->f:Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->j:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->f:Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

    iget v2, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->e:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->scheduleTask(Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;J)V

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->unsetCurrentSession()V

    throw v0

    :sswitch_3
    invoke-static {p2, v3}, Lcom/nuance/nmsp/client/sdk/common/util/ByteConversion;->bytesToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->pingRequestId:I

    const/16 v0, 0x8

    invoke-direct {p0, v0, v4}, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a(BLjava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_4
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->f:Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->j:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->f:Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

    invoke-interface {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->cancelTask(Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;)Z

    :cond_4
    invoke-static {p2, v3}, Lcom/nuance/nmsp/client/sdk/common/util/ByteConversion;->bytesToShort([BI)S

    move-result v0

    iput-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->n:S

    iput-byte v5, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->state:B

    const/4 v0, 0x6

    iput-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->m:S

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string v1, "XMode.parseXModeMsgCopDisconnect() Received COP DISCONNECT. "

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->warn(Ljava/lang/Object;)V

    :cond_5
    invoke-direct {p0, v6, v4}, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a(BLjava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_5
    invoke-static {p2, v3}, Lcom/nuance/nmsp/client/sdk/common/util/ByteConversion;->bytesToShort([BI)S

    move-result v0

    invoke-static {p2, v5}, Lcom/nuance/nmsp/client/sdk/common/util/ByteConversion;->bytesToInt([BI)I

    const/4 v1, 0x7

    iput-short v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->m:S

    iput-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->n:S

    iput-byte v5, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->state:B

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string v1, "XMode.parseXModeMsgCopConnectFailed() COP CONNECT failure. "

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    :cond_6
    invoke-direct {p0, v6, v4}, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a(BLjava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_6
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->f:Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->j:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->f:Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

    invoke-interface {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->cancelTask(Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode$7;

    invoke-direct {v0, p0}, Lcom/nuance/nmsp/client/sdk/components/core/XMode$7;-><init>(Lcom/nuance/nmsp/client/sdk/components/core/XMode;)V

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->f:Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->j:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->f:Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

    iget v2, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->e:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->scheduleTask(Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;J)V

    :cond_7
    iget-short v0, p1, Lcom/nuance/nmsp/client/sdk/common/protocols/XModeMsgHeader;->cmd:S

    const/16 v1, 0xa51

    if-ne v0, v1, :cond_8

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string v1, "XMode.parseXModeMsg() BCP_LOG_RESPONSE is deprecated"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->warn(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->t:Lcom/nuance/nmsp/client/sdk/components/core/XMode$XModeListener;

    invoke-interface {v0, p1, p2}, Lcom/nuance/nmsp/client/sdk/components/core/XMode$XModeListener;->xmodeMsgCallback(Lcom/nuance/nmsp/client/sdk/common/protocols/XModeMsgHeader;[B)V

    goto/16 :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->f:Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->j:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->f:Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

    invoke-interface {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->cancelTask(Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode$8;

    invoke-direct {v0, p0}, Lcom/nuance/nmsp/client/sdk/components/core/XMode$8;-><init>(Lcom/nuance/nmsp/client/sdk/components/core/XMode;)V

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->f:Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->j:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->f:Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

    iget v2, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->e:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->scheduleTask(Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;J)V

    :cond_9
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->t:Lcom/nuance/nmsp/client/sdk/components/core/XMode$XModeListener;

    invoke-interface {v0, p1, p2}, Lcom/nuance/nmsp/client/sdk/components/core/XMode$XModeListener;->xmodeMsgCallback(Lcom/nuance/nmsp/client/sdk/common/protocols/XModeMsgHeader;[B)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_7
        0x2 -> :sswitch_6
        0x3 -> :sswitch_1
        0xf -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x101 -> :sswitch_2
        0x102 -> :sswitch_3
        0x200 -> :sswitch_4
        0x300 -> :sswitch_5
    .end sparse-switch
.end method

.method static synthetic a(Lcom/nuance/nmsp/client/sdk/components/core/XMode;BLjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a(BLjava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->u:Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->y:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->u:Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;

    invoke-interface {v0, p1}, Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;->createChildEventBuilder(Ljava/lang/String;)Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;->commit()Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/nuance/nmsp/client/sdk/components/core/XMode;)Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->v:Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl;

    return-object v0
.end method


# virtual methods
.method public clearPendingNetworkOps()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->r:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->k:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem;->clearPendingOps(Ljava/lang/Object;)V

    return-void
.end method

.method public closeSocketCallback(Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "XMode.closeSocketCallback() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->state:B

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->b:Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->j:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->b:Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

    invoke-interface {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->cancelTask(Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;)Z

    iput-object v3, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->b:Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

    :cond_1
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->f:Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->j:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->f:Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

    invoke-interface {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->cancelTask(Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;)Z

    iput-object v3, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->f:Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

    :cond_2
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->k:Ljava/lang/Object;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->t:Lcom/nuance/nmsp/client/sdk/components/core/XMode$XModeListener;

    iget-short v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->m:S

    iget-short v2, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->n:S

    invoke-interface {v0, v1, v2}, Lcom/nuance/nmsp/client/sdk/components/core/XMode$XModeListener;->socketClosed(SS)V

    :cond_3
    iput-object v3, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->k:Ljava/lang/Object;

    iput-object v3, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->r:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem;

    iput-object v3, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->sessionId:[B

    const-string v0, ""

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->s:Ljava/lang/String;

    return-void
.end method

.method public connect(SS)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "XMode.connect() codec: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_0
    iget-byte v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->state:B

    if-eq v0, v4, :cond_3

    iget-byte v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->state:B

    if-eqz v0, :cond_3

    iget-byte v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->state:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->b:Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->j:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->b:Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

    invoke-interface {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->cancelTask(Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;)Z

    :cond_1
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->f:Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->j:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->f:Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

    invoke-interface {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->cancelTask(Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;)Z

    :cond_2
    const-string v0, "OpenSocket"

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->k:Ljava/lang/Object;

    iput-object v3, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->r:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem;

    iput-object v3, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->sessionId:[B

    const-string v0, ""

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->s:Ljava/lang/String;

    iput-short p1, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->inputCodec:S

    iput-short p2, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->outputCodec:S

    iput-byte v5, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->state:B

    invoke-direct {p0, v4, v3}, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a(BLjava/lang/Object;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-byte v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->state:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    const-string v0, "OpenSocket"

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a(Ljava/lang/String;)V

    iput-short p1, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->inputCodec:S

    iput-short p2, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->outputCodec:S

    iput-byte v5, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->state:B

    invoke-direct {p0, v4, v3}, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a(BLjava/lang/Object;)V

    goto :goto_0
.end method

.method public createSessionEvent(Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "NMSPSocket"

    invoke-interface {p1, v0}, Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;->createChildEventBuilder(Ljava/lang/String;)Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;->commit()Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->u:Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;

    :cond_0
    return-void
.end method

.method public disconnect()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "XMode.disconnect() state:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v2, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->state:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", socket:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->k:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_0
    iget-byte v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->state:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iput-short v3, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->m:S

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->t:Lcom/nuance/nmsp/client/sdk/components/core/XMode$XModeListener;

    iget-short v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->m:S

    iget-short v2, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->n:S

    invoke-interface {v0, v1, v2}, Lcom/nuance/nmsp/client/sdk/components/core/XMode$XModeListener;->socketClosed(SS)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-byte v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->state:B

    if-eq v0, v4, :cond_1

    iget-byte v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->state:B

    if-nez v0, :cond_3

    const-string v0, "CloseSocket"

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a(Ljava/lang/String;)V

    iput-short v3, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->m:S

    iput-byte v4, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->state:B

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->k:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->r:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->k:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem;->closeSocket(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-byte v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->state:B

    if-ne v0, v3, :cond_1

    iput-byte v4, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->state:B

    iput-short v3, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->m:S

    const/4 v0, 0x0

    invoke-direct {p0, v4, v0}, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a(BLjava/lang/Object;)V

    goto :goto_0
.end method

.method public handleMessage(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 11

    const/16 v9, 0x17

    const/4 v8, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v4, 0x0

    check-cast p1, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;

    iget-byte v0, p1, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;->command:B

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string v1, "XMode.handleMessage() CMD_CONNECT"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_1
    iget-byte v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->state:B

    if-nez v0, :cond_2

    invoke-direct {p0, v7, v6}, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a(BLjava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->t:Lcom/nuance/nmsp/client/sdk/components/core/XMode$XModeListener;

    iget-short v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->m:S

    iget-short v2, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->n:S

    invoke-interface {v0, v1, v2}, Lcom/nuance/nmsp/client/sdk/components/core/XMode$XModeListener;->socketClosed(SS)V

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string v1, "XMode.handleMessage() CMD_OPEN_SOCKET"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_3
    iget-byte v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->state:B

    if-nez v0, :cond_5

    new-instance v0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->j:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    invoke-direct {v0, v1}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;-><init>(Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;)V

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->r:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem;

    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->h:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->r:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->server:Ljava/lang/String;

    iget-short v2, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->port:S

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->i:Ljava/util/Vector;

    move-object v4, p0

    move-object v5, p0

    invoke-interface/range {v0 .. v6}, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem;->openSSLSocket(Ljava/lang/String;ILjava/util/Vector;Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$OpenSocketCallback;Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$CloseSocketCallback;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->r:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem;

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->server:Ljava/lang/String;

    iget-short v3, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->port:S

    move-object v4, p0

    move-object v5, p0

    invoke-interface/range {v1 .. v6}, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem;->openSocket(Ljava/lang/String;ILcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$OpenSocketCallback;Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$CloseSocketCallback;Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->t:Lcom/nuance/nmsp/client/sdk/components/core/XMode$XModeListener;

    iget-short v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->m:S

    iget-short v2, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->n:S

    invoke-interface {v0, v1, v2}, Lcom/nuance/nmsp/client/sdk/components/core/XMode$XModeListener;->socketClosed(SS)V

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string v1, "XMode.handleMessage() CMD_COP_CONNECT"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_6
    iget-byte v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->state:B

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;->data:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<?xml version=\"1.0\"?><cc><s></s><t>7</t><b>20091023</b><tsc>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-short v2, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->inputCodec:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</tsc><fsc>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->outputCodec:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</fsc><nmaid>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</nmaid><uid>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</uid>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v0, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<rootlog>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</rootlog>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->y:Z

    if-eqz v0, :cond_8

    const-string v0, "<disablecalllogging/>"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->g:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v3

    move-object v1, v0

    move v2, v4

    :goto_3
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getType()Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    move-result-object v5

    sget-object v6, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->NMSP:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    if-ne v5, v6, :cond_14

    new-instance v5, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getValue()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "<nmsp p=\""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "\" v=\""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v5}, Lcom/nuance/nmsp/client/sdk/common/util/Util;->escapeXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\"/>"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Ping_IntervalSecs"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    const/4 v2, 0x1

    move-object v10, v1

    move v1, v2

    move-object v2, v10

    :goto_4
    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getType()Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    move-result-object v5

    sget-object v6, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->APP:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    if-ne v5, v6, :cond_13

    new-instance v5, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getValue()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "<app p=\""

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" v=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v5}, Lcom/nuance/nmsp/client/sdk/common/util/Util;->escapeXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\"/>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5
    move v2, v1

    move-object v1, v0

    goto/16 :goto_3

    :cond_7
    const-string v0, ""

    goto/16 :goto_1

    :cond_8
    const-string v0, ""

    goto/16 :goto_2

    :cond_9
    if-nez v2, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<nmsp p=\"Ping_IntervalSecs\" v=\"0\"/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</cc>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v2, v1, 0x4

    add-int/lit8 v2, v2, 0x1

    new-array v3, v2, [B

    add-int/lit8 v2, v2, -0x4

    invoke-static {v2, v3, v4}, Lcom/nuance/nmsp/client/sdk/common/util/ByteConversion;->intToBytes(I[BI)V

    aput-byte v4, v3, v8

    const/4 v2, 0x5

    invoke-static {v0, v4, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0x100

    invoke-static {v7, v9, v0, v3}, Lcom/nuance/nmsp/client/sdk/common/protocols/ProtocolBuilder;->buildXModeBuf(BBS[B)[B

    move-result-object v0

    const-string v1, "SEND_COP_CONNECT"

    invoke-virtual {p0, v0, v7, v1}, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->sendXModeMsg([BILjava/lang/Object;)V

    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode$5;

    invoke-direct {v0, p0}, Lcom/nuance/nmsp/client/sdk/components/core/XMode$5;-><init>(Lcom/nuance/nmsp/client/sdk/components/core/XMode;)V

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->d:Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->j:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->d:Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

    iget v2, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->c:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->scheduleTask(Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;J)V

    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->state:B

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->t:Lcom/nuance/nmsp/client/sdk/components/core/XMode$XModeListener;

    invoke-interface {v0}, Lcom/nuance/nmsp/client/sdk/components/core/XMode$XModeListener;->socketOpened()V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->r:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->k:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    new-array v3, v0, [B

    const-string v7, "READ_XMODE_HEADER"

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->r:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->k:Ljava/lang/Object;

    sget-object v2, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkReadMode;->NETWORK_READ_FULL:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkReadMode;

    const/16 v5, 0x8

    move-object v6, p0

    invoke-interface/range {v0 .. v7}, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem;->socketRead(Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkReadMode;[BIILcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$ReadSocketCallback;Ljava/lang/Object;)Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->l:Lcom/nuance/nmsp/client/sdk/common/protocols/XModeMsgHeader;

    iget v0, v0, Lcom/nuance/nmsp/client/sdk/common/protocols/XModeMsgHeader;->len:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->l:Lcom/nuance/nmsp/client/sdk/common/protocols/XModeMsgHeader;

    iget v0, v0, Lcom/nuance/nmsp/client/sdk/common/protocols/XModeMsgHeader;->len:I

    const v1, 0x7d000

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->l:Lcom/nuance/nmsp/client/sdk/common/protocols/XModeMsgHeader;

    iget v0, v0, Lcom/nuance/nmsp/client/sdk/common/protocols/XModeMsgHeader;->len:I

    new-array v3, v0, [B

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->r:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->k:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const-string v7, "READ_XMODE_PAYLOAD"

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->r:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->k:Ljava/lang/Object;

    sget-object v2, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkReadMode;->NETWORK_READ_FULL:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkReadMode;

    array-length v5, v3

    move-object v6, p0

    invoke-interface/range {v0 .. v7}, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem;->socketRead(Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkReadMode;[BIILcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$ReadSocketCallback;Ljava/lang/Object;)Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;

    goto/16 :goto_0

    :pswitch_5
    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string v1, "XMode.handleMessage() CMD_DISCONNECT"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_b
    const/4 v0, 0x2

    new-array v0, v0, [B

    invoke-static {v4, v0, v4}, Lcom/nuance/nmsp/client/sdk/common/util/ByteConversion;->shortToBytes(S[BI)V

    const/16 v1, 0x200

    invoke-static {v7, v9, v1, v0}, Lcom/nuance/nmsp/client/sdk/common/protocols/ProtocolBuilder;->buildXModeBuf(BBS[B)[B

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->r:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem;

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->k:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem;->clearPendingOps(Ljava/lang/Object;)V

    const-string v1, "SEND_COP_DISCONNECT"

    invoke-virtual {p0, v0, v7, v1}, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->sendXModeMsg([BILjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_6
    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string v1, "XMode.handleMessage() CMD_CLOSE_SOCKET"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->r:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->k:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->r:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->k:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem;->closeSocket(Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_7
    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string v1, "XMode.handleMessage() CMD_COP_PING_RESPONSE"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_d
    const/16 v0, 0x8

    new-array v0, v0, [B

    iget v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->pingRequestId:I

    invoke-static {v1, v0, v4}, Lcom/nuance/nmsp/client/sdk/common/util/ByteConversion;->intToBytes(I[BI)V

    invoke-static {v4, v0, v8}, Lcom/nuance/nmsp/client/sdk/common/util/ByteConversion;->intToBytes(I[BI)V

    const/16 v1, 0x103

    invoke-static {v7, v9, v1, v0}, Lcom/nuance/nmsp/client/sdk/common/protocols/ProtocolBuilder;->buildXModeBuf(BBS[B)[B

    move-result-object v0

    const-string v1, "SEND_COP_PING_RESPONSE"

    invoke-virtual {p0, v0, v7, v1}, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->sendXModeMsg([BILjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_8
    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string v1, "XMode.handleMessage() CMD_COP_CONNECT_TIMED_OUT"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_e
    iget-byte v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->state:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->state:B

    const/4 v0, 0x5

    iput-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->m:S

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string v1, "XMode.handleCopConnectTimeout() COP CONNECT timed out. "

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    :cond_f
    invoke-direct {p0, v8, v6}, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a(BLjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_9
    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string v1, "XMode.handleMessage() CMD_COP_CONFIRM"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_10
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->q:[B

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->sessionId:[B

    invoke-static {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MiscSystem;->HMAC_SHA1([B[B)[B

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, 0x4

    new-array v1, v1, [B

    array-length v2, v0

    invoke-static {v2, v1, v4}, Lcom/nuance/nmsp/client/sdk/common/util/ByteConversion;->intToBytes(I[BI)V

    array-length v2, v0

    invoke-static {v0, v4, v1, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0x106

    invoke-static {v7, v9, v0, v1}, Lcom/nuance/nmsp/client/sdk/common/protocols/ProtocolBuilder;->buildXModeBuf(BBS[B)[B

    move-result-object v0

    const-string v1, "SEND_COP_CONFIRM"

    invoke-virtual {p0, v0, v7, v1}, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->sendXModeMsg([BILjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_a
    iget-object v0, p1, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;->data:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->t:Lcom/nuance/nmsp/client/sdk/components/core/XMode$XModeListener;

    invoke-interface {v1, v0, v6}, Lcom/nuance/nmsp/client/sdk/components/core/XMode$XModeListener;->xmodeMsgSent(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_b
    iget-object v0, p1, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;->data:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->t:Lcom/nuance/nmsp/client/sdk/components/core/XMode$XModeListener;

    invoke-interface {v1, v0, v6}, Lcom/nuance/nmsp/client/sdk/components/core/XMode$XModeListener;->xmodeMsgNotSent(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_c
    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string v1, "XMode.handleMessage() CMD_GENERATE_COP_REF_ID"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_11
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->u:Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->getParent()Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;

    const-string v1, "NMSP_GATEWAY"

    new-instance v2, Lcom/nuance/nmsp/client/sdk/components/core/XMode$4;

    invoke-direct {v2, p0}, Lcom/nuance/nmsp/client/sdk/components/core/XMode$4;-><init>(Lcom/nuance/nmsp/client/sdk/components/core/XMode;)V

    invoke-static {v0, v1, v2}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl;->createRemoteSessionEventBuilder(Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl$GenSeqIdCallback;)Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->v:Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl;

    goto/16 :goto_0

    :pswitch_d
    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string v1, "XMode.handleMessage() CMD_SEND_LOW_PRIORITY_MSG"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_12
    const/4 v0, 0x2

    invoke-virtual {p0, v6, v0, v6}, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->sendXModeMsg([BILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_13
    move-object v0, v2

    goto/16 :goto_5

    :cond_14
    move-object v10, v1

    move v1, v2

    move-object v2, v10

    goto/16 :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_5
        :pswitch_1
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public isNetworkHealthy()Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->r:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem;->isNetworkHealthy()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public openSocketCallback(Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    const/4 v2, 0x4

    const/4 v3, 0x0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string v1, "XMode.openSocketCallback() "

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;->NETWORK_OK:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;

    if-ne p1, v0, :cond_4

    iput-object p2, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->k:Ljava/lang/Object;

    iget-byte v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->state:B

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->u:Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;

    if-nez v0, :cond_2

    const/4 v0, 0x7

    invoke-direct {p0, v0, v3}, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a(BLjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/16 v0, 0xd

    invoke-direct {p0, v0, v3}, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a(BLjava/lang/Object;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->state:B

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->r:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->k:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem;->closeSocket(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;->NETWORK_ERROR:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;

    if-ne p1, v0, :cond_6

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string v1, "XMode.openSocketCallback() NETWORK_ERROR"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    :cond_5
    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->state:B

    iput-short v2, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->m:S

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->t:Lcom/nuance/nmsp/client/sdk/components/core/XMode$XModeListener;

    iget-short v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->m:S

    iget-short v2, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->n:S

    invoke-interface {v0, v1, v2}, Lcom/nuance/nmsp/client/sdk/components/core/XMode$XModeListener;->socketClosed(SS)V

    iput-object v3, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->k:Ljava/lang/Object;

    iput-object v3, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->r:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem;

    iput-object v3, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->sessionId:[B

    const-string v0, ""

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->s:Ljava/lang/String;

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;->NETWORK_MEMORY_ERROR:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;

    if-ne p1, v0, :cond_1

    iput-short v2, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->m:S

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string v1, "XMode.openSocketCallback() NETWORK_MEMORY_ERROR"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public readSocketCallback(Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;Ljava/lang/Object;[BIIILjava/lang/Object;)V
    .locals 7

    const/4 v6, 0x6

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x5

    const/4 v2, 0x0

    check-cast p7, Ljava/lang/String;

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string v1, "Read callback"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0, p3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->traceBuffer([B)V

    :cond_1
    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;->NETWORK_OK:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;

    if-ne p1, v0, :cond_d

    const-string v0, "READ_XMODE_HEADER"

    invoke-virtual {p7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    if-nez p6, :cond_3

    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode$2;

    invoke-direct {v0, p0}, Lcom/nuance/nmsp/client/sdk/components/core/XMode$2;-><init>(Lcom/nuance/nmsp/client/sdk/components/core/XMode;)V

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->b:Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->j:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->b:Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

    const-wide/16 v2, 0x14

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->scheduleTask(Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;J)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    if-ne p6, p5, :cond_7

    new-instance v0, Lcom/nuance/nmsp/client/sdk/common/protocols/XModeMsgHeader;

    invoke-direct {v0, p3}, Lcom/nuance/nmsp/client/sdk/common/protocols/XModeMsgHeader;-><init>([B)V

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->l:Lcom/nuance/nmsp/client/sdk/common/protocols/XModeMsgHeader;

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->l:Lcom/nuance/nmsp/client/sdk/common/protocols/XModeMsgHeader;

    iget v0, v0, Lcom/nuance/nmsp/client/sdk/common/protocols/XModeMsgHeader;->len:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->l:Lcom/nuance/nmsp/client/sdk/common/protocols/XModeMsgHeader;

    invoke-direct {p0, v0, v2}, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a(Lcom/nuance/nmsp/client/sdk/common/protocols/XModeMsgHeader;[B)V

    invoke-direct {p0, v3, v2}, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a(BLjava/lang/Object;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->l:Lcom/nuance/nmsp/client/sdk/common/protocols/XModeMsgHeader;

    iget v0, v0, Lcom/nuance/nmsp/client/sdk/common/protocols/XModeMsgHeader;->len:I

    const v1, 0x7d000

    if-gt v0, v1, :cond_5

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->l:Lcom/nuance/nmsp/client/sdk/common/protocols/XModeMsgHeader;

    iget v0, v0, Lcom/nuance/nmsp/client/sdk/common/protocols/XModeMsgHeader;->len:I

    if-gez v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->r:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem;

    invoke-interface {v0, p2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem;->clearPendingOps(Ljava/lang/Object;)V

    invoke-direct {p0, v3, v2}, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a(BLjava/lang/Object;)V

    goto :goto_0

    :cond_6
    invoke-direct {p0, v6, v2}, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a(BLjava/lang/Object;)V

    goto :goto_0

    :cond_7
    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "----***---- readSocketCallback fatal error in readSocketCallback NET_CONTEXT_READ_XMODE_HEADER bytesRead:["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] bufferLen:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    goto :goto_0

    :cond_8
    const-string v0, "READ_XMODE_PAYLOAD"

    invoke-virtual {p7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p6, :cond_a

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->l:Lcom/nuance/nmsp/client/sdk/common/protocols/XModeMsgHeader;

    iget-short v2, v2, Lcom/nuance/nmsp/client/sdk/common/protocols/XModeMsgHeader;->cmd:S

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " payload not read bytesRead is 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_9
    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode$3;

    invoke-direct {v0, p0}, Lcom/nuance/nmsp/client/sdk/components/core/XMode$3;-><init>(Lcom/nuance/nmsp/client/sdk/components/core/XMode;)V

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->b:Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->j:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->b:Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

    const-wide/16 v2, 0x14

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->scheduleTask(Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;J)V

    goto/16 :goto_0

    :cond_a
    if-ne p6, p5, :cond_c

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->l:Lcom/nuance/nmsp/client/sdk/common/protocols/XModeMsgHeader;

    iget v0, v0, Lcom/nuance/nmsp/client/sdk/common/protocols/XModeMsgHeader;->len:I

    if-gt v0, p5, :cond_b

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->l:Lcom/nuance/nmsp/client/sdk/common/protocols/XModeMsgHeader;

    invoke-direct {p0, v0, p3}, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a(Lcom/nuance/nmsp/client/sdk/common/protocols/XModeMsgHeader;[B)V

    :cond_b
    invoke-direct {p0, v3, v2}, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a(BLjava/lang/Object;)V

    goto/16 :goto_0

    :cond_c
    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "----***---- readSocketCallback fatal error in readSocketCallback NET_CONTEXT_READ_XMODE_PAYLOAD bytesRead:["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] bufferLen:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_d
    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;->NETWORK_ERROR:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;

    if-ne p1, v0, :cond_f

    iget-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->m:S

    if-eq v0, v4, :cond_e

    iget-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->m:S

    if-eq v0, v5, :cond_e

    iget-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->m:S

    if-eq v0, v6, :cond_e

    const/16 v0, 0x8

    iput-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->m:S

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string v1, "XMode.readSocketCallback() NETWORK_ERROR"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    :cond_e
    const/4 v0, 0x4

    invoke-direct {p0, v0, v2}, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a(BLjava/lang/Object;)V

    goto/16 :goto_0

    :cond_f
    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;->NETWORK_MEMORY_ERROR:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;

    if-ne p1, v0, :cond_2

    iget-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->m:S

    if-eq v0, v4, :cond_2

    iget-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->m:S

    if-eq v0, v5, :cond_2

    const/16 v0, 0x8

    iput-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->m:S

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string v1, "XMode.readSocketCallback() NETWORK_MEMORY_ERROR"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public sendVapRecordEnd(I)V
    .locals 4

    const/4 v3, 0x1

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "XMode.sendVapRecordEnd() audio id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_0
    iget-byte v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->state:B

    if-eq v0, v3, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/nuance/nmsp/client/sdk/common/util/ByteConversion;->intToBytes(I[BI)V

    const/16 v1, 0x12

    const/16 v2, 0x100

    invoke-static {v3, v1, v2, v0}, Lcom/nuance/nmsp/client/sdk/common/protocols/ProtocolBuilder;->buildXModeBuf(BBS[B)[B

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "SEND_VAP_RECORD_END"

    invoke-virtual {p0, v0, v1, v2}, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->sendXModeMsg([BILjava/lang/Object;)V

    goto :goto_0
.end method

.method public sendVapRecordMsg([BI)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "XMode.sendVapRecordMsg() audio id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_0
    iget-byte v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->state:B

    if-eq v0, v4, :cond_1

    :goto_0
    return-void

    :cond_1
    array-length v0, p1

    add-int/lit8 v1, v0, 0x8

    new-array v1, v1, [B

    invoke-static {p2, v1, v3}, Lcom/nuance/nmsp/client/sdk/common/util/ByteConversion;->intToBytes(I[BI)V

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/nuance/nmsp/client/sdk/common/util/ByteConversion;->intToBytes(I[BI)V

    const/16 v2, 0x8

    invoke-static {p1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0x12

    const/16 v2, 0x201

    invoke-static {v4, v0, v2, v1}, Lcom/nuance/nmsp/client/sdk/common/protocols/ProtocolBuilder;->buildXModeBuf(BBS[B)[B

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "SEND_VAP_RECORD"

    invoke-virtual {p0, v0, v1, v2}, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->sendXModeMsg([BILjava/lang/Object;)V

    goto :goto_0
.end method

.method public sendXModeMsg([BILjava/lang/Object;)V
    .locals 7

    const/4 v4, 0x2

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "XMode.sendXModeMsg() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", buffer.length:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->f:Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->j:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->f:Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

    invoke-interface {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->cancelTask(Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode$1;

    invoke-direct {v0, p0}, Lcom/nuance/nmsp/client/sdk/components/core/XMode$1;-><init>(Lcom/nuance/nmsp/client/sdk/components/core/XMode;)V

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->f:Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->j:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->f:Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

    iget v2, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->e:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->scheduleTask(Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;J)V

    :cond_1
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->r:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->k:Ljava/lang/Object;

    if-eqz v0, :cond_6

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    if-eq p2, v4, :cond_2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->w:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->x:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-nez v0, :cond_5

    :cond_2
    if-ne p2, v4, :cond_4

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->x:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode$a;

    iget-object v2, v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode$a;->a:[B

    move-object v6, v0

    :goto_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->w:Ljava/util/Queue;

    invoke-interface {v0, v6}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->r:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->k:Ljava/lang/Object;

    const/4 v3, 0x0

    array-length v4, v2

    move-object v5, p0

    invoke-interface/range {v0 .. v6}, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem;->socketWrite(Ljava/lang/Object;[BIILcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$WriteSocketCallback;Ljava/lang/Object;)Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;

    :cond_3
    :goto_1
    return-void

    :cond_4
    new-instance v6, Lcom/nuance/nmsp/client/sdk/components/core/XMode$a;

    const/4 v0, 0x0

    invoke-direct {v6, p0, v0, p3}, Lcom/nuance/nmsp/client/sdk/components/core/XMode$a;-><init>(Lcom/nuance/nmsp/client/sdk/components/core/XMode;[BLjava/lang/Object;)V

    move-object v2, p1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->x:Ljava/util/Queue;

    new-instance v1, Lcom/nuance/nmsp/client/sdk/components/core/XMode$a;

    invoke-direct {v1, p0, p1, p3}, Lcom/nuance/nmsp/client/sdk/components/core/XMode$a;-><init>(Lcom/nuance/nmsp/client/sdk/components/core/XMode;[BLjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->x:Ljava/util/Queue;

    new-instance v1, Lcom/nuance/nmsp/client/sdk/components/core/XMode$a;

    invoke-direct {v1, p0, p1, p3}, Lcom/nuance/nmsp/client/sdk/components/core/XMode$a;-><init>(Lcom/nuance/nmsp/client/sdk/components/core/XMode;[BLjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public setForLogOnly()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->y:Z

    return-void
.end method

.method public startStreaming(I)V
    .locals 4

    const/4 v3, 0x1

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "XMode.startStreaming() audio id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_0
    iget-byte v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->state:B

    if-eq v0, v3, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x6

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/nuance/nmsp/client/sdk/common/util/ByteConversion;->intToBytes(I[BI)V

    iget-short v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->inputCodec:S

    const/4 v2, 0x4

    invoke-static {v1, v0, v2}, Lcom/nuance/nmsp/client/sdk/common/util/ByteConversion;->shortToBytes(S[BI)V

    const/16 v1, 0x12

    const/16 v2, 0x101

    invoke-static {v3, v1, v2, v0}, Lcom/nuance/nmsp/client/sdk/common/protocols/ProtocolBuilder;->buildXModeBuf(BBS[B)[B

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "SEND_VAP_RECORD_BEGIN"

    invoke-virtual {p0, v0, v1, v2}, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->sendXModeMsg([BILjava/lang/Object;)V

    goto :goto_0
.end method

.method public writeSocketCallback(Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;Ljava/lang/Object;[BIIILjava/lang/Object;)V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x3

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/16 v4, 0xc

    move-object v0, p7

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode$a;

    iget-object v0, v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode$a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    sget-object v2, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;->NETWORK_OK:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;

    if-ne p1, v2, :cond_3

    if-ne p5, p6, :cond_3

    const-string v1, "SEND_COP_CONNECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a(BLjava/lang/Object;)V

    :cond_0
    :goto_0
    const/16 v1, 0xb

    invoke-direct {p0, v1, v0}, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a(BLjava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->w:Ljava/util/Queue;

    invoke-interface {v0, p7}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->w:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->x:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/16 v0, 0xe

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a(BLjava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    const-string v1, "SEND_COP_DISCONNECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->r:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem;

    invoke-interface {v1, p2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem;->closeSocket(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;->NETWORK_ERROR:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;

    if-ne p1, v2, :cond_5

    iget-short v2, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->m:S

    if-eq v2, v3, :cond_4

    iget-short v2, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->m:S

    if-eq v2, v5, :cond_4

    iput-short v6, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->m:S

    sget-object v2, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string v3, "XMode.writeSocketCallback() NETWORK_ERROR"

    invoke-virtual {v2, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    :cond_4
    invoke-direct {p0, v4, v0}, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a(BLjava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->w:Ljava/util/Queue;

    invoke-interface {v0, p7}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->w:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->x:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->x:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode$a;

    iget-object v0, v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode$a;->b:Ljava/lang/Object;

    invoke-direct {p0, v4, v0}, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a(BLjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    sget-object v2, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;->NETWORK_MEMORY_ERROR:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;

    if-ne p1, v2, :cond_1

    iget-short v2, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->m:S

    if-eq v2, v3, :cond_6

    iget-short v2, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->m:S

    if-eq v2, v5, :cond_6

    iput-short v6, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->m:S

    sget-object v2, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string v3, "XMode.writeSocketCallback() NETWORK_MEMORY_ERROR"

    invoke-virtual {v2, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    :cond_6
    invoke-direct {p0, v4, v0}, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a(BLjava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->w:Ljava/util/Queue;

    invoke-interface {v0, p7}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->w:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->x:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v2

    :goto_2
    if-ge v1, v2, :cond_1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->x:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode$a;

    iget-object v0, v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode$a;->b:Ljava/lang/Object;

    invoke-direct {p0, v4, v0}, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a(BLjava/lang/Object;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method
