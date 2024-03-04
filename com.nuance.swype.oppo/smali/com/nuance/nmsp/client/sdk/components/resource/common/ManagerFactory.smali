.class public Lcom/nuance/nmsp/client/sdk/components/resource/common/ManagerFactory;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/nuance/nmsp/client/sdk/components/resource/common/ManagerFactory;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory;->getLog(Ljava/lang/Class;)Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/common/ManagerFactory;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createManager(Ljava/lang/String;SLjava/lang/String;[BLjava/lang/String;Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;Ljava/util/Vector;Lcom/nuance/nmsp/client/sdk/components/resource/common/ManagerListener;)Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;
    .locals 11

    sget-object v1, Lcom/nuance/nmsp/client/sdk/components/resource/common/ManagerFactory;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/nuance/nmsp/client/sdk/components/resource/common/ManagerFactory;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string v2, "createManager"

    invoke-virtual {v1, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    sget-object v1, Lcom/nuance/nmsp/client/sdk/components/resource/common/ManagerFactory;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string v2, "NullPointerException gatewayIP is NULL. "

    invoke-virtual {v1, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "gatewayIP must be provided!"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    if-gtz p1, :cond_3

    sget-object v1, Lcom/nuance/nmsp/client/sdk/components/resource/common/ManagerFactory;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string v2, "IllegalArgumentException gatewayPort is invalid. "

    invoke-virtual {v1, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "gatewayPort invalid value!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    if-nez p2, :cond_4

    sget-object v1, Lcom/nuance/nmsp/client/sdk/components/resource/common/ManagerFactory;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string v2, "NullPointerException applicationId is NULL. "

    invoke-virtual {v1, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Application id can not be null!"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    if-nez p3, :cond_5

    sget-object v1, Lcom/nuance/nmsp/client/sdk/components/resource/common/ManagerFactory;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string v2, "NullPointerException appKey is NULL. "

    invoke-virtual {v1, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Application key can not be null!"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    if-nez p4, :cond_6

    sget-object v1, Lcom/nuance/nmsp/client/sdk/components/resource/common/ManagerFactory;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string v2, "NullPointerException uid is NULL. "

    invoke-virtual {v1, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "uid can not be null!"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    if-nez p5, :cond_7

    sget-object v1, Lcom/nuance/nmsp/client/sdk/components/resource/common/ManagerFactory;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string v2, "NullPointerException inputCodec is NULL. "

    invoke-virtual {v1, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "inputCodec can not be null!"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    if-nez p6, :cond_8

    sget-object v1, Lcom/nuance/nmsp/client/sdk/components/resource/common/ManagerFactory;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string v2, "NullPointerException outputCodec is NULL. "

    invoke-virtual {v1, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "outputCodec can not be null!"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    if-nez p8, :cond_9

    sget-object v1, Lcom/nuance/nmsp/client/sdk/components/resource/common/ManagerFactory;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string v2, "NullPointerException managerListener is NULL. "

    invoke-virtual {v1, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "managerListener can not be null!"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    if-eqz p7, :cond_c

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual/range {p7 .. p7}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v2, v1, :cond_c

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getType()Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    move-result-object v3

    sget-object v4, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->SLOG:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    if-eq v3, v4, :cond_a

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getType()Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    move-result-object v3

    sget-object v4, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->NSSLOG:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    if-eq v3, v4, :cond_a

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getType()Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    move-result-object v3

    sget-object v4, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->GWLOG:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    if-eq v3, v4, :cond_a

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getType()Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    move-result-object v3

    sget-object v4, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->SVSP:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    if-eq v3, v4, :cond_a

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getType()Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    move-result-object v3

    sget-object v4, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->NSS:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    if-eq v3, v4, :cond_a

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getType()Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    move-result-object v3

    sget-object v4, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->SIP:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    if-eq v3, v4, :cond_a

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getType()Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    move-result-object v3

    sget-object v4, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->SDP:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    if-ne v3, v4, :cond_b

    :cond_a
    sget-object v2, Lcom/nuance/nmsp/client/sdk/components/resource/common/ManagerFactory;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "IllegalArgumentException Parameter type: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getType()Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not allowed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Parameter type: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getType()Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " not allowed. "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_0

    :cond_c
    new-instance v1, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;-><init>(Ljava/lang/String;SLjava/lang/String;[BLjava/lang/String;Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;Ljava/util/Vector;Lcom/nuance/nmsp/client/sdk/components/resource/common/ManagerListener;)V

    return-object v1
.end method

.method public static terminate()V
    .locals 0

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;->terminate()V

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/TimerSystemOEM;->terminate()V

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM;->terminate()V

    return-void
.end method
