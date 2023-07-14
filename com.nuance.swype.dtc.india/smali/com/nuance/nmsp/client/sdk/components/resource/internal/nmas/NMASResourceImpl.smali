.class public Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;
.super Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;

# interfaces
.implements Lcom/nuance/nmsp/client/sdk/components/resource/nmas/NMASResource;


# static fields
.field public static final BCP_BEGIN:B = 0x4t

.field public static final BCP_DATA:B = 0x5t

.field private static final a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

.field private static e:Ljava/lang/String;


# instance fields
.field private b:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

.field private c:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/NMASResourceListener;

.field private d:Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory;->getLog(Ljava/lang/Class;)Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;Lcom/nuance/nmsp/client/sdk/components/resource/nmas/NMASResourceListener;Ljava/util/Vector;Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;-><init>(Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/resource/common/ResourceListener;Ljava/util/Vector;B)V

    iput-object p2, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;->c:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/NMASResourceListener;

    invoke-virtual {p1}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;->getMsgSys()Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;->b:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    invoke-virtual {p1}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;->getSession()Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;->session:Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;->session:Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;

    invoke-virtual {v0, p0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->setResource(Lcom/nuance/nmsp/client/sdk/components/resource/common/Resource;)V

    iput-object v7, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;->d:Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;->b:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    new-instance v1, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;

    invoke-direct {v1, v6, v7}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;-><init>(BLjava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;->b:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    invoke-interface {v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->getVRAddr()[Ljava/lang/Object;

    move-result-object v3

    aget-object v3, v3, v6

    invoke-interface {v0, v1, p0, v2, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->send(Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageHandler;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private a(B)V
    .locals 4

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;->d:Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;->d:Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;

    iget-byte v0, v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->tranId:B

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;->getManager()Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;->getResourceLogs()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "clearResLogsToServer() before clean the log vector tranId["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] log list size ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v2, v1, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$TransactionLogEntry;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$TransactionLogEntry;->isSent()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "clearResLogsToServer() after clean the log vector tranId["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] log list size ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public createCommand(Lcom/nuance/nmsp/client/sdk/components/resource/nmas/PDXCommandListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;J)Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Command;
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmsp/client/sdk/components/resource/common/ResourceException;
        }
    .end annotation

    const-string/jumbo v2, ""

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "commandListener is invalid; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    if-eqz p2, :cond_1

    const-string/jumbo v3, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "cmd should be non-null; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    if-eqz p3, :cond_3

    const-string/jumbo v3, ""

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "scriptVersion should be non-null; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_4
    if-eqz p4, :cond_5

    const-string/jumbo v3, ""

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "dictationLanguage should be non-null; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_6
    if-eqz p6, :cond_7

    const-string/jumbo v3, ""

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "phoneModel should be non-null; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_8
    const-wide/16 v4, 0x0

    cmp-long v3, p8, v4

    if-gtz v3, :cond_9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "commandTimeout is invalid; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_9
    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    sget-object v3, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "NMASResourceImpl.createCommand() "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;->syncObject:Ljava/lang/Object;

    move-object/from16 v28, v0

    monitor-enter v28

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;->d:Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;->d:Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;

    invoke-virtual {v2}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->transactionOver()V

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;->session:Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->setDefaultReqId(J)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;->resourceState:I

    if-nez v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;->b:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    new-instance v3, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;-><init>(BLjava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;->b:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    invoke-interface {v5}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->getVRAddr()[Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    move-object/from16 v0, p0

    invoke-interface {v2, v3, v0, v4, v5}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->send(Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageHandler;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;->session:Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;

    invoke-virtual {v2}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->getTransactionId()B

    move-result v2

    move-object/from16 v0, p0

    iput-byte v2, v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;->tranId:B

    new-instance v2, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;->b:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;->manager:Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;

    check-cast v4, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;

    iget-object v6, v4, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;->applicationId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;->session:Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;->manager:Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;

    check-cast v4, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;

    invoke-virtual {v4}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;->getUid()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "1"

    sget-object v10, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;->e:Ljava/lang/String;

    const-string/jumbo v12, "enus"

    const-string/jumbo v13, "ne"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;->manager:Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;

    check-cast v4, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;

    invoke-virtual {v4}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;->getInputCodec()Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    move-result-object v14

    const/16 v16, 0x1

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;->manager:Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;

    check-cast v4, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;

    invoke-virtual {v4}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;->getUid()Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v21, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;->c:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/NMASResourceListener;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;->tranId:B

    move/from16 v27, v0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v11, p3

    move-object/from16 v15, p4

    move-object/from16 v18, p5

    move-object/from16 v19, p6

    move-wide/from16 v22, p8

    move-object/from16 v24, p7

    move-object/from16 v25, p0

    invoke-direct/range {v2 .. v27}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;-><init>(Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;Lcom/nuance/nmsp/client/sdk/components/resource/nmas/PDXCommandListener;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;Ljava/lang/String;SSLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;Lcom/nuance/nmsp/client/sdk/components/resource/nmas/NMASResourceListener;B)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;->d:Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;->d:Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;

    monitor-exit v28
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :catchall_0
    move-exception v2

    monitor-exit v28

    throw v2
.end method

.method public createPDXAudioParam(Ljava/lang/String;)Lcom/nuance/nmsp/client/sdk/components/resource/nmas/AudioParam;
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "name can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXAudioParam;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;->session:Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;->b:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    invoke-direct {v0, p1, v1, v2}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXAudioParam;-><init>(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;)V

    return-object v0
.end method

.method public createPDXChoiceParam(Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Parameter;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "name can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "choicename can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXChoiceParam;

    invoke-direct {v0, p1, p2}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXChoiceParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createPDXDataParam(Ljava/lang/String;[B)Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Parameter;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "name can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "data can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXDataParam;

    invoke-direct {v0, p1, p2}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXDataParam;-><init>(Ljava/lang/String;[B)V

    return-object v0
.end method

.method public createPDXDictParam(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;)Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Parameter;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "name can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "dict can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXDictParam;

    check-cast p2, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;

    invoke-direct {v0, p1, p2}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXDictParam;-><init>(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;)V

    return-object v0
.end method

.method public createPDXDictionary()Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;
    .locals 1

    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;

    invoke-direct {v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;-><init>()V

    return-object v0
.end method

.method public createPDXSeqChunkParam(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;)Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Parameter;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "name can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "dict can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXSeqParam;

    check-cast p2, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;

    const/4 v1, 0x2

    invoke-direct {v0, p1, p2, v1}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXSeqParam;-><init>(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;B)V

    return-object v0
.end method

.method public createPDXSeqEndParam(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;)Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Parameter;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "name can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "dict can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXSeqParam;

    check-cast p2, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;

    const/4 v1, 0x3

    invoke-direct {v0, p1, p2, v1}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXSeqParam;-><init>(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;B)V

    return-object v0
.end method

.method public createPDXSeqStartParam(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;)Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Parameter;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "name can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "dict can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXSeqParam;

    check-cast p2, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXSeqParam;-><init>(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;B)V

    return-object v0
.end method

.method public createPDXSequence()Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;
    .locals 1

    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;

    invoke-direct {v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;-><init>()V

    return-object v0
.end method

.method public createPDXTTSParam(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;Lcom/nuance/nmsp/client/sdk/components/general/NMSPAudioSink;)Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Parameter;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "name can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "tts_dict can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "audioSink can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTTSParam;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;->session:Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;

    check-cast p2, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTTSParam;-><init>(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;Lcom/nuance/nmsp/client/sdk/components/general/NMSPAudioSink;)V

    return-object v0
.end method

.method public createPDXTextParam(Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Parameter;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "name can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "text can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTextParam;

    invoke-direct {v0, p1, p2}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTextParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public freeResource(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmsp/client/sdk/components/resource/common/ResourceException;
        }
    .end annotation

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "freeResource() disconnectTimeout:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;->d:Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;->d:Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->transactionOver()V

    :cond_0
    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;->syncObject:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;->resourceState:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;->resourceState:I

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;->b:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    new-instance v3, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;

    const/4 v4, 0x3

    invoke-direct {v3, v4, v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;-><init>(BLjava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v4, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;->b:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    invoke-interface {v4}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->getVRAddr()[Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-interface {v2, v3, p0, v0, v4}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->send(Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageHandler;Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v1

    return-void

    :cond_1
    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/resource/common/ResourceException;

    const-string/jumbo v2, "the resource was unloaded. "

    invoke-direct {v0, v2}, Lcom/nuance/nmsp/client/sdk/components/resource/common/ResourceException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getRequestId()J
    .locals 2

    invoke-super {p0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->getRequestId()J

    move-result-wide v0

    return-wide v0
.end method

.method public handleMessage(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;

    iget-byte v0, v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;->command:B

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1, p2}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->handleMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void

    :pswitch_1
    const/4 v0, 0x0

    invoke-super {p0, p0, v0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->loadResource(Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSessionListener;Ljava/util/Vector;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;->session:Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;

    invoke-virtual {v0, p0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->removeSessionListener(Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSessionListener;)V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;->c:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/NMASResourceListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/NMASResourceListener;->resourceUnloaded(S)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onBcpData(BJ[B)V
    .locals 4

    invoke-static {p4}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXMessageFactory;->createMessage([B)Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXMessage;->getCommandCode()S

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    sget-object v1, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Session.parseXModeMsgBcpData() Unknown command: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXMessage;->getCommandCode()S

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ". "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;->a(B)V

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;->d:Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;->d:Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryResult;

    invoke-virtual {v1, v0, p1}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->onQueryResults(Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryResult;B)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;->d:Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;->d:Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryError;

    invoke-virtual {v1, v0, p1}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->onQueryError(Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryError;B)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;->a(B)V

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;->d:Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;->d:Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryRetry;

    invoke-virtual {v1, v0, p1}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->onQueryRetry(Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryRetry;B)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7201
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onBcpEvent(BS)V
    .locals 1

    iget-byte v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;->tranId:B

    if-eq p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;->d:Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;->d:Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->transactionOver()V

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->onBcpEvent(BS)V

    goto :goto_0
.end method

.method public onMsgNotSent(BLjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onMsgSent(BLjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onSessionConnected([B)V
    .locals 1

    invoke-super {p0, p1}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->onSessionConnected([B)V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;->d:Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;->d:Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;

    invoke-virtual {v0, p1}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->onSessionConnected([B)V

    :cond_0
    return-void
.end method

.method public onSessionDisconnected(S)V
    .locals 3

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onSessionDisconnected() reasonCode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;->d:Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;->d:Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;

    invoke-virtual {v0, p1}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->onSessionDisconnected(S)V

    :cond_0
    invoke-super {p0, p1}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->onSessionDisconnected(S)V

    return-void
.end method

.method public onVapPlayBeginReceived()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;->d:Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;->d:Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->onVapPlayBeginReceived()V

    :cond_0
    return-void
.end method

.method public onVapPlayEndReceived()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;->d:Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;->d:Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->onVapPlayEndReceived()V

    :cond_0
    return-void
.end method

.method public onVapPlayReceived()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;->d:Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;->d:Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->onVapPlayReceived()V

    :cond_0
    return-void
.end method

.method public onVapSending()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;->d:Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;->d:Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->resetCommandTimeoutTask()V

    :cond_0
    return-void
.end method
