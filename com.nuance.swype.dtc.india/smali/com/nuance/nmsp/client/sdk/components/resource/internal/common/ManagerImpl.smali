.class public Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;
.super Lcom/nuance/nmsp/client/sdk/components/general/NMSPManager;

# interfaces
.implements Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogListener;
.implements Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;


# static fields
.field private static final a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;


# instance fields
.field public applicationId:Ljava/lang/String;

.field private b:Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;

.field private c:Ljava/lang/Object;

.field private d:Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;

.field private e:Lcom/nuance/nmsp/client/sdk/components/resource/common/ManagerListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory;->getLog(Ljava/lang/Class;)Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;SLjava/lang/String;[BLjava/lang/String;Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;Ljava/util/Vector;Lcom/nuance/nmsp/client/sdk/components/resource/common/ManagerListener;)V
    .locals 15

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    invoke-direct/range {v1 .. v6}, Lcom/nuance/nmsp/client/sdk/components/general/NMSPManager;-><init>(Ljava/lang/String;SLjava/lang/String;Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)V

    if-nez p3, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, " application id is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;->applicationId:Ljava/lang/String;

    if-nez p4, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, " application key is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;->e:Lcom/nuance/nmsp/client/sdk/components/resource/common/ManagerListener;

    const/4 v5, 0x7

    const/4 v4, 0x0

    const v3, 0xf4240

    const/4 v2, 0x0

    if-eqz p8, :cond_2

    invoke-virtual/range {p8 .. p8}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_4

    :cond_2
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    move v10, v2

    move v12, v3

    move-object v13, v4

    move v14, v5

    :goto_0
    new-instance v1, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;

    invoke-virtual {p0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;->getGatewayIP()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;->getGatewayPort()S

    move-result v3

    invoke-virtual {p0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;->getMsgSys()Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    move-result-object v8

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v9, p9

    invoke-direct/range {v1 .. v9}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;-><init>(Ljava/lang/String;SLjava/lang/String;[BLjava/lang/String;Ljava/util/Vector;Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;Lcom/nuance/nmsp/client/sdk/components/resource/common/ManagerListener;)V

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;->b:Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;

    if-nez v10, :cond_3

    new-instance v1, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;

    iget-object v4, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;->applicationId:Ljava/lang/String;

    iget-object v10, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;->uid:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;->getMsgSys()Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    move-result-object v11

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v5, p4

    move v6, v12

    move v7, v14

    move-object v8, v13

    move-object/from16 v9, p8

    move-object v12, p0

    invoke-direct/range {v1 .. v12}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;-><init>(Ljava/lang/String;SLjava/lang/String;[BIILjava/lang/String;Ljava/util/Vector;Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogListener;)V

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;->d:Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;->b:Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;->d:Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;

    invoke-virtual {v1, v2}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->a(Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;)V

    :cond_3
    return-void

    :cond_4
    new-instance v7, Ljava/util/Vector;

    invoke-virtual/range {p8 .. p8}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-direct {v7, v1}, Ljava/util/Vector;-><init>(I)V

    const/4 v1, 0x0

    move v6, v1

    :goto_1
    invoke-virtual/range {p8 .. p8}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v6, v1, :cond_d

    move-object/from16 v0, p8

    invoke-virtual {v0, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getType()Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    move-result-object v8

    sget-object v9, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->SDK:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    if-ne v8, v9, :cond_5

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "DEVICE_CMD_LOG_TO_SERVER_ENABLED"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    iput-object v8, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;->c:Ljava/lang/Object;

    :cond_5
    :goto_2
    invoke-virtual {v7, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_1

    :cond_6
    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "Calllog_Disable"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    new-instance v8, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getValue()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    const-string/jumbo v9, "TRUE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    new-instance v8, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getValue()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    const-string/jumbo v9, "true"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    :cond_7
    const/4 v2, 0x1

    goto :goto_2

    :cond_8
    new-instance v8, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getValue()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    const-string/jumbo v9, "FALSE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    new-instance v8, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getValue()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    const-string/jumbo v9, "false"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    :cond_9
    const/4 v2, 0x0

    goto :goto_2

    :cond_a
    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "Calllog_Root_Id"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    new-instance v4, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getValue()[B

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/lang/String;-><init>([B)V

    goto :goto_2

    :cond_b
    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "Calllog_Retention_Days"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    new-instance v5, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getValue()[B

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/String;-><init>([B)V

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_2

    :cond_c
    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "Calllog_Chunk_Size"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    new-instance v3, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getValue()[B

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/lang/String;-><init>([B)V

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v8, 0x4e20

    if-ge v3, v8, :cond_5

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Minimum chunk size for calllog is 20000"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    move v10, v2

    move v12, v3

    move-object v13, v4

    move v14, v5

    goto/16 :goto_0
.end method


# virtual methods
.method public calllogDataGenerated([B)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;->e:Lcom/nuance/nmsp/client/sdk/components/resource/common/ManagerListener;

    invoke-interface {v0, p1}, Lcom/nuance/nmsp/client/sdk/components/resource/common/ManagerListener;->callLogDataGenerated([B)V

    return-void
.end method

.method public clearResourceLogs()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;->c:Ljava/lang/Object;

    return-void
.end method

.method public flushCallLogData()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;->d:Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;

    if-nez v0, :cond_0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "Trying to flush logs while calllog is disabled"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;->d:Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;->flushLogsToListener()V

    goto :goto_0
.end method

.method public getCalllog()Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;->d:Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;

    return-object v0
.end method

.method public getCalllogRootParentId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;->d:Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;

    if-nez v0, :cond_0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "Trying to get root parent id while calllog is disabled"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;->d:Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;->getRootParentId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCalllogSession()Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;->b:Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->getSessionEvent()Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;

    move-result-object v0

    return-object v0
.end method

.method public getResourceLogs()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public getSession()Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;->b:Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;

    return-object v0
.end method

.method public logAppEvent(Ljava/lang/String;)Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;
    .locals 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;->d:Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;

    if-nez v0, :cond_0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "Trying to add log while calllog is disabled"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;->d:Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;->getRootSessionEvent()Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;->createChildEventBuilder(Ljava/lang/String;)Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;

    move-result-object v0

    goto :goto_0
.end method

.method public shutdown()V
    .locals 2

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "shutdown"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;->d:Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;->d:Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;->getRootSessionEvent()Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "NMSP_ShutDown"

    invoke-interface {v0, v1}, Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;->createChildEventBuilder(Ljava/lang/String;)Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;->commit()Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;->d:Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;->flushLogsToListener()V

    :cond_1
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;->b:Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->disconnectAndShutdown()V

    return-void
.end method
