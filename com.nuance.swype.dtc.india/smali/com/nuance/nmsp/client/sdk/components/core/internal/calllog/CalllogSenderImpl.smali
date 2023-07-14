.class public Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageHandler;
.implements Lcom/nuance/nmsp/client/sdk/components/core/XMode$XModeListener;
.implements Lcom/nuance/nmsp/client/sdk/components/core/calllog/CalllogSender;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl$1;
    }
.end annotation


# static fields
.field private static final a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;


# instance fields
.field private final b:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

.field private c:Lcom/nuance/nmsp/client/sdk/components/core/calllog/CalllogSender$SenderListener;

.field private d:Ljava/util/Queue;

.field private e:Lcom/nuance/nmsp/client/sdk/components/core/XMode;

.field private final f:Ljava/util/List;

.field private g:I

.field private h:Ljava/lang/String;

.field private i:S

.field private j:Ljava/lang/String;

.field private k:[B

.field private l:Ljava/util/Vector;

.field private m:Ljava/lang/String;

.field private n:I

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory;->getLog(Ljava/lang/Class;)Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/nmsp/client/sdk/components/core/calllog/CalllogSender$SenderListener;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM;

    invoke-direct {v0}, Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->b:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->c:Lcom/nuance/nmsp/client/sdk/components/core/calllog/CalllogSender$SenderListener;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->d:Ljava/util/Queue;

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->e:Lcom/nuance/nmsp/client/sdk/components/core/XMode;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->f:Ljava/util/List;

    iput v3, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->g:I

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->h:Ljava/lang/String;

    iput-short v2, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->i:S

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->j:Ljava/lang/String;

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->k:[B

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->l:Ljava/util/Vector;

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->m:Ljava/lang/String;

    iput v3, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->n:I

    iput v2, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->o:I

    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->c:Lcom/nuance/nmsp/client/sdk/components/core/calllog/CalllogSender$SenderListener;

    return-void
.end method

.method private a([B)Ljava/util/List;
    .locals 10

    const/4 v2, 0x0

    const/16 v7, 0x14

    const/4 v1, 0x0

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    new-instance v4, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl$1;

    invoke-direct {v4, p0, v1}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl$1;-><init>(Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;B)V

    new-array v5, v7, [B

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->l:Ljava/util/Vector;

    invoke-direct {p0, p1, v4}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->a([BLcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl$1;)[B

    move-result-object v0

    invoke-static {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/util/ByteConversion;->bytesToInt([BI)I

    move-result v6

    const/16 v0, 0x8

    invoke-static {p1, v0, v5, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string/jumbo v0, "b84798d890d847063ac0145b627a1ecfe4538006"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/16 v7, 0x1c

    invoke-static {v0, p1, v7}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MiscSystem;->HMAC_SHA1([B[BI)[B

    move-result-object v7

    iget v0, v4, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl$1;->a:I

    add-int/lit8 v0, v0, 0x14

    iput v0, v4, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl$1;->a:I

    move v0, v1

    :goto_0
    array-length v8, v7

    if-ge v0, v8, :cond_2

    aget-byte v8, v7, v0

    aget-byte v9, v5, v0

    if-eq v8, v9, :cond_1

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "unserializeEvents() hashes do not match"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    :cond_0
    move-object v0, v2

    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {p0, p1, v4}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->a([BLcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl$1;)[B

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->h:Ljava/lang/String;

    invoke-direct {p0, p1, v4}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->a([BLcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl$1;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->i:S

    new-instance v0, Ljava/lang/String;

    invoke-direct {p0, p1, v4}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->a([BLcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl$1;)[B

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->j:Ljava/lang/String;

    invoke-direct {p0, p1, v4}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->a([BLcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl$1;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->k:[B

    new-instance v0, Ljava/lang/String;

    invoke-direct {p0, p1, v4}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->a([BLcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl$1;)[B

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->m:Ljava/lang/String;

    invoke-direct {p0, p1, v4}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->a([BLcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl$1;)[B

    move-result-object v0

    :goto_2
    const/4 v5, 0x0

    aget-byte v5, v0, v5

    if-ge v1, v5, :cond_3

    new-instance v5, Ljava/lang/String;

    invoke-direct {p0, p1, v4}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->a([BLcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl$1;)[B

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>([B)V

    invoke-direct {p0, p1, v4}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->a([BLcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl$1;)[B

    sget-object v7, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->SDK:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    invoke-direct {p0, p1, v4}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->a([BLcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl$1;)[B

    move-result-object v8

    new-instance v9, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;

    invoke-direct {v9, v5, v8, v7}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;)V

    iget-object v5, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->l:Ljava/util/Vector;

    invoke-virtual {v5, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    iget v0, v4, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl$1;->a:I

    if-ge v0, v6, :cond_5

    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl$SessionEventData;

    invoke-direct {v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl$SessionEventData;-><init>()V

    invoke-direct {p0, p1, v4}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->a([BLcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl$1;)[B

    move-result-object v1

    iput-object v1, v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl$SessionEventData;->data:[B

    new-instance v1, Ljava/lang/String;

    invoke-direct {p0, p1, v4}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->a([BLcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl$1;)[B

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/String;-><init>([B)V

    iput-object v1, v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl$SessionEventData;->sessionEventId:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    sget-object v1, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "unserializeEvents() failed!!! : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    :cond_4
    move-object v0, v2

    goto/16 :goto_1

    :cond_5
    move-object v0, v3

    goto/16 :goto_1
.end method

.method private a()V
    .locals 6

    const/4 v5, 0x0

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->o:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->d:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->f:Ljava/util/List;

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->d:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->a([B)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->o:I

    :cond_0
    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "trySendingLogs() , _events.size()"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->f:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl$SessionEventData;

    sget-object v1, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "bcpLog, packet len ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl$SessionEventData;->data:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_2
    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->b:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    new-instance v2, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;

    const/4 v3, 0x2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;-><init>(BLjava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->b:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    invoke-interface {v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->getVRAddr()[Ljava/lang/Object;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-interface {v1, v2, p0, v0, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->send(Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageHandler;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private a([BLcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl$1;)[B
    .locals 4

    const/4 v2, 0x4

    const/4 v3, 0x0

    new-array v0, v2, [B

    iget v1, p2, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl$1;->a:I

    invoke-static {p1, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p2, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl$1;->a:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p2, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl$1;->a:I

    const/4 v1, 0x3

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    const/4 v2, 0x2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v1, v2

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v0, v1

    new-array v0, v0, [B

    iget v1, p2, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl$1;->a:I

    array-length v2, v0

    invoke-static {p1, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p2, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl$1;->a:I

    array-length v2, v0

    add-int/2addr v1, v2

    iput v1, p2, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl$1;->a:I

    return-object v0
.end method


# virtual methods
.method public copConnected()V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->n:I

    invoke-direct {p0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->a()V

    return-void
.end method

.method public handleMessage(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v9, 0x0

    check-cast p1, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;

    iget-byte v0, p1, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;->command:B

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;->data:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    aget-object v0, v0, v9

    check-cast v0, [B

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->c:Lcom/nuance/nmsp/client/sdk/components/core/calllog/CalllogSender$SenderListener;

    invoke-interface {v1, v4, v0}, Lcom/nuance/nmsp/client/sdk/components/core/calllog/CalllogSender$SenderListener;->failed(S[B)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->d:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->n:I

    if-ne v1, v3, :cond_2

    iput v5, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->n:I

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->a([B)Ljava/util/List;

    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->h:Ljava/lang/String;

    iget-short v2, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->i:S

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->j:Ljava/lang/String;

    iget-object v4, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->k:[B

    iget-object v5, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->m:Ljava/lang/String;

    iget-object v7, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->l:Ljava/util/Vector;

    iget-object v8, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->b:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    move-object v6, p0

    invoke-direct/range {v0 .. v8}, Lcom/nuance/nmsp/client/sdk/components/core/XMode;-><init>(Ljava/lang/String;SLjava/lang/String;[BLjava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/XMode$XModeListener;Ljava/util/Vector;Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;)V

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->e:Lcom/nuance/nmsp/client/sdk/components/core/XMode;

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->e:Lcom/nuance/nmsp/client/sdk/components/core/XMode;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->setForLogOnly()V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->e:Lcom/nuance/nmsp/client/sdk/components/core/XMode;

    invoke-virtual {v0, v9, v9}, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->connect(SS)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->n:I

    if-ne v0, v4, :cond_0

    invoke-direct {p0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->a()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;->data:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    aget-object v0, v0, v9

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl$SessionEventData;

    iget v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->g:I

    iput v1, v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl$SessionEventData;->requestId:I

    iget-object v1, v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl$SessionEventData;->data:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x19

    new-array v1, v1, [B

    aput-byte v9, v1, v9

    iget v2, v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl$SessionEventData;->requestId:I

    invoke-static {v2, v1, v3}, Lcom/nuance/nmsp/client/sdk/common/util/ByteConversion;->intToBytes(I[BI)V

    iget-object v2, v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl$SessionEventData;->sessionEventId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/nuance/nmsp/client/sdk/common/protocols/ProtocolBuilder;->appendBCPSessionUUID([B[B)[B

    move-result-object v1

    iget-object v2, v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl$SessionEventData;->data:[B

    array-length v2, v2

    const/16 v3, 0x15

    invoke-static {v2, v1, v3}, Lcom/nuance/nmsp/client/sdk/common/util/ByteConversion;->intToBytes(I[BI)V

    iget-object v2, v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl$SessionEventData;->data:[B

    const/16 v3, 0x19

    iget-object v0, v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl$SessionEventData;->data:[B

    array-length v0, v0

    invoke-static {v2, v9, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0x22

    const/16 v2, 0xa50

    invoke-static {v5, v0, v2, v1}, Lcom/nuance/nmsp/client/sdk/common/protocols/ProtocolBuilder;->buildXModeBuf(BBS[B)[B

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->e:Lcom/nuance/nmsp/client/sdk/components/core/XMode;

    const-string/jumbo v2, "SEND_BCP_LOG"

    invoke-virtual {v1, v0, v4, v2}, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->sendXModeMsg([BILjava/lang/Object;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public send([B)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iput v3, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->g:I

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->b:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    new-instance v1, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-direct {v1, v3, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;-><init>(BLjava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->b:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    invoke-interface {v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->getVRAddr()[Ljava/lang/Object;

    move-result-object v3

    aget-object v3, v3, v4

    invoke-interface {v0, v1, p0, v2, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->send(Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageHandler;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public socketClosed(SS)V
    .locals 3

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "socketClosed() reason ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] subReason ["

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
    const/4 v0, 0x1

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->n:I

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->b:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    invoke-interface {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->stop()V

    return-void
.end method

.method public socketOpened()V
    .locals 2

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "socketOpened()"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public xmodeMsgCallback(Lcom/nuance/nmsp/client/sdk/common/protocols/XModeMsgHeader;[B)V
    .locals 0

    return-void
.end method

.method public xmodeMsgNotSent(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    const-string/jumbo v0, "SEND_BCP_LOG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onMsgNotSent("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_2
    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->o:I

    if-lez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->o:I

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->d:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->e:Lcom/nuance/nmsp/client/sdk/components/core/XMode;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->disconnect()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->e:Lcom/nuance/nmsp/client/sdk/components/core/XMode;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->c:Lcom/nuance/nmsp/client/sdk/components/core/calllog/CalllogSender$SenderListener;

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->d:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-interface {v1, v2, v0}, Lcom/nuance/nmsp/client/sdk/components/core/calllog/CalllogSender$SenderListener;->failed(S[B)V

    goto :goto_0
.end method

.method public xmodeMsgSent(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    const-string/jumbo v0, "SEND_BCP_LOG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onMsgSent("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_2
    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->o:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->o:I

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->o:I

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->c:Lcom/nuance/nmsp/client/sdk/components/core/calllog/CalllogSender$SenderListener;

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->d:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-interface {v1, v0}, Lcom/nuance/nmsp/client/sdk/components/core/calllog/CalllogSender$SenderListener;->succeeded([B)V

    invoke-direct {p0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;->a()V

    goto :goto_0
.end method
