.class public Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl$SessionEventData;
    }
.end annotation


# static fields
.field public static final CALLLOG_CHUNK_SIZE_DEFAULT:I = 0xf4240

.field public static final CALLLOG_CHUNK_SIZE_MINIMUM:I = 0x4e20

.field public static final CALLLOG_RETENTION_DAYS_DEFAULT:I = 0x7

.field public static final INTERNAL_SHA1_KEY:Ljava/lang/String; = "b84798d890d847063ac0145b627a1ecfe4538006"

.field private static final a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;


# instance fields
.field private final b:Ljava/util/List;

.field private c:J

.field private d:Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;

.field private e:Z

.field private f:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

.field private g:[B

.field private h:I

.field private i:Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory;->getLog(Ljava/lang/Class;)Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;SLjava/lang/String;[BIILjava/lang/String;Ljava/util/Vector;Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogListener;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;->b:Ljava/util/List;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;->c:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;->e:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;->g:[B

    const/4 v2, 0x0

    iput v2, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;->h:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;->i:Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogListener;

    const-string/jumbo v2, "CalllogImpl(uid)"

    move-object/from16 v0, p9

    invoke-static {v2, v0}, Lcom/nuance/nmsp/client/sdk/common/util/Checker;->checkArgForNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p4

    move-object v6, p3

    move-object/from16 v7, p9

    move-object/from16 v8, p8

    invoke-direct/range {v2 .. v8}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;->a(Ljava/lang/String;S[BLjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    iput p5, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;->h:I

    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;->f:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;->i:Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogListener;

    if-nez p7, :cond_0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    :try_start_0
    const-string/jumbo v3, "CLIENT"

    const-string/jumbo v4, "2.0"

    const-string/jumbo v7, "CLIENT"

    move v5, p6

    move-object v6, p0

    invoke-static/range {v2 .. v7}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;Ljava/lang/String;)Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl;

    move-result-object v2

    const-string/jumbo v3, "Uid"

    move-object/from16 v0, p9

    invoke-virtual {v2, v3, v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;

    move-result-object v2

    const-string/jumbo v3, "Nmaid"

    invoke-interface {v2, v3, p3}, Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;

    move-result-object v2

    const-string/jumbo v3, "client_hardware_model"

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/components/general/ResourceUtil;->getDeviceModel()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;

    move-result-object v2

    const-string/jumbo v3, "client_hardware_submodel"

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/components/general/ResourceUtil;->getDeviceSubModel()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;

    move-result-object v2

    const-string/jumbo v3, "client_os_type"

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/components/general/ResourceUtil;->getOSType()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;

    move-result-object v2

    const-string/jumbo v3, "client_os_version"

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/components/general/ResourceUtil;->getOSVersion()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;

    move-result-object v2

    const-string/jumbo v3, "client_sdk_release"

    const-string/jumbo v4, "NMSP 5.1 client SDK - build 018"

    invoke-interface {v2, v3, v4}, Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;

    move-result-object v2

    invoke-interface {v2}, Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;->commit()Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;->d:Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;
    :try_end_0
    .catch Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventAlreadyCommittedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_0
    move-object/from16 v2, p7

    goto :goto_0
.end method

.method private a()V
    .locals 4

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "Trying to close with zero events"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->warn(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;->b:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;->a(Ljava/util/List;)[B

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v1, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v2, "CalllogImpl.close serialized data is null"

    invoke-virtual {v1, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    :cond_1
    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;->c:J

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;->i:Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogListener;

    invoke-interface {v1, v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogListener;->calllogDataGenerated([B)V

    return-void
.end method

.method private a(Ljava/lang/String;S[BLjava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 9

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v0, 0x2

    new-array v4, v0, [B

    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {p5}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const/4 v0, 0x1

    new-array v7, v0, [B

    const/4 v0, 0x0

    int-to-byte v1, p2

    aput-byte v1, v4, v0

    const/4 v0, 0x1

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, v4, v0

    const/4 v0, 0x0

    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v7, v0

    array-length v0, v3

    add-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x4

    array-length v1, v5

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x4

    array-length v1, p3

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x4

    array-length v1, v6

    add-int/2addr v0, v1

    add-int/lit8 v1, v0, 0x4

    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :goto_0
    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {p6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;

    if-nez v0, :cond_0

    :goto_1
    return-void

    :cond_0
    invoke-interface {p6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v2, v8

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getValue()[B

    move-result-object v0

    array-length v0, v0

    add-int/2addr v2, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v3, v2, v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;->a([BLjava/nio/ByteBuffer;Z)V

    const/4 v0, 0x1

    invoke-direct {p0, v4, v2, v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;->a([BLjava/nio/ByteBuffer;Z)V

    const/4 v0, 0x1

    invoke-direct {p0, v5, v2, v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;->a([BLjava/nio/ByteBuffer;Z)V

    const/4 v0, 0x1

    invoke-direct {p0, p3, v2, v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;->a([BLjava/nio/ByteBuffer;Z)V

    const/4 v0, 0x1

    invoke-direct {p0, v6, v2, v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;->a([BLjava/nio/ByteBuffer;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_2
    const/4 v0, 0x1

    invoke-direct {p0, v7, v2, v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;->a([BLjava/nio/ByteBuffer;Z)V

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-interface {p6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;

    const/4 v3, 0x2

    :try_start_1
    new-array v3, v3, [B

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getType()Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->getValue()S

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getType()Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->getValue()S

    move-result v5

    shr-int/lit8 v5, v5, 0x8

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {p0, v4, v2, v5}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;->a([BLjava/nio/ByteBuffer;Z)V

    const/4 v4, 0x1

    invoke-direct {p0, v3, v2, v4}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;->a([BLjava/nio/ByteBuffer;Z)V

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getValue()[B

    move-result-object v0

    const/4 v3, 0x1

    invoke-direct {p0, v0, v2, v3}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;->a([BLjava/nio/ByteBuffer;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    sget-object v1, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "serializeEvents() failed : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    sget-object v3, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "serializeEvents() failed : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;->g:[B

    goto/16 :goto_1
.end method

.method private a([BLjava/nio/ByteBuffer;Z)V
    .locals 8

    const/4 v3, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-eqz p3, :cond_0

    array-length v0, p1

    new-array v1, v7, [[B

    new-array v2, v6, [B

    aput-byte v3, v2, v5

    new-array v3, v3, [B

    int-to-byte v4, v0

    aput-byte v4, v3, v5

    shr-int/lit8 v4, v0, 0x8

    int-to-byte v4, v4

    aput-byte v4, v3, v6

    shr-int/lit8 v4, v0, 0x10

    int-to-byte v4, v4

    aput-byte v4, v3, v7

    const/4 v4, 0x3

    ushr-int/lit8 v0, v0, 0x18

    int-to-byte v0, v0

    aput-byte v0, v3, v4

    aput-object v2, v1, v5

    aput-object v3, v1, v6

    aget-object v0, v1, v6

    aget-object v1, v1, v6

    array-length v1, v1

    invoke-virtual {p2, v0, v5, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    :cond_0
    array-length v0, p1

    invoke-virtual {p2, p1, v5, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method private a(Ljava/util/List;)[B
    .locals 7

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x4

    new-array v4, v0, [B

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;->g:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1c

    move v1, v2

    move v3, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl$SessionEventData;

    add-int/lit8 v3, v3, 0x4

    iget-object v5, v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl$SessionEventData;->data:[B

    array-length v5, v5

    add-int/2addr v3, v5

    add-int/lit8 v3, v3, 0x4

    iget-object v0, v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl$SessionEventData;->sessionEventId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    add-int/2addr v3, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {v3, v4, v2}, Lcom/nuance/nmsp/client/sdk/common/util/ByteConversion;->intToBytes(I[BI)V

    invoke-direct {p0, v4, v5, v6}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;->a([BLjava/nio/ByteBuffer;Z)V

    const/16 v0, 0x14

    new-array v0, v0, [B

    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;->g:[B

    invoke-direct {p0, v0, v5, v2}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;->a([BLjava/nio/ByteBuffer;Z)V

    move v1, v2

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl$SessionEventData;

    iget-object v3, v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl$SessionEventData;->data:[B

    array-length v3, v3

    if-eqz v3, :cond_1

    :try_start_0
    iget-object v3, v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl$SessionEventData;->data:[B

    const/4 v4, 0x1

    invoke-direct {p0, v3, v5, v4}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;->a([BLjava/nio/ByteBuffer;Z)V

    iget-object v0, v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl$SessionEventData;->sessionEventId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v3, 0x1

    invoke-direct {p0, v0, v5, v3}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;->a([BLjava/nio/ByteBuffer;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    sget-object v3, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "serializeEvents() failed : "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    const-string/jumbo v0, "b84798d890d847063ac0145b627a1ecfe4538006"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/16 v3, 0x1c

    invoke-static {v0, v1, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MiscSystem;->HMAC_SHA1([B[BI)[B

    move-result-object v0

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/16 v3, 0x8

    array-length v4, v0

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method


# virtual methods
.method final a(Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent$SessionEventCommittedListener;)V
    .locals 6

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;->e:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;->f:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    new-instance v1, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;

    const/16 v2, 0x10

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-direct {v1, v2, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;-><init>(BLjava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;->f:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    invoke-interface {v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->getVRAddr()[Ljava/lang/Object;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-interface {v0, v1, p0, v2, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->send(Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageHandler;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public dispose()V
    .locals 2

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "onSessionDisconnected()"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;->e:Z

    return-void
.end method

.method public flushLogsToListener()V
    .locals 5

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;->f:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    new-instance v1, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;

    const/16 v2, 0x15

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;-><init>(BLjava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;->f:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    invoke-interface {v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->getVRAddr()[Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-interface {v0, v1, p0, v2, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->send(Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageHandler;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public genSeqId(Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl$GenSeqIdCallback;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;->f:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    new-instance v1, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;

    const/16 v2, 0x14

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-direct {v1, v2, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;-><init>(BLjava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;->f:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    invoke-interface {v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->getVRAddr()[Ljava/lang/Object;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-interface {v0, v1, p0, v2, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->send(Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageHandler;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public getRootParentId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;->d:Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RootSessionEventImpl;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RootSessionEventImpl;->getRootParentId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRootSessionEvent()Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;->d:Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;

    return-object v0
.end method

.method public handleMessage(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-wide/16 v8, 0x4

    check-cast p1, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;

    iget-byte v0, p1, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;->command:B

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p1, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;->data:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    aget-object v1, v0, v1

    check-cast v1, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;

    aget-object v0, v0, v2

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl$GenSeqIdCallback;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->genSeqId()V

    if-eqz v0, :cond_0

    instance-of v2, v1, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RemoteSessionEventImpl;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RemoteSessionEventImpl;

    invoke-virtual {v2}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RemoteSessionEventImpl;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl$GenSeqIdCallback;->seqIdGenerated(Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-interface {v0, v1, v3}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl$GenSeqIdCallback;->seqIdGenerated(Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p1, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;->data:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    aget-object v1, v0, v1

    check-cast v1, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;

    aget-object v0, v0, v2

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent$SessionEventCommittedListener;

    new-instance v2, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl$SessionEventData;

    invoke-direct {v2}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl$SessionEventData;-><init>()V

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->getBinaryFormat()[B

    move-result-object v3

    iput-object v3, v2, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl$SessionEventData;->data:[B

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->a:Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RootSessionEventImpl;

    invoke-virtual {v4}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RootSessionEventImpl;->getRootParentId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl$SessionEventData;->sessionEventId:Ljava/lang/String;

    iget-wide v4, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;->c:J

    add-long/2addr v4, v8

    add-long/2addr v4, v8

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;->g:[B

    array-length v3, v3

    int-to-long v6, v3

    add-long/2addr v4, v6

    add-long/2addr v4, v8

    iget-object v3, v2, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl$SessionEventData;->data:[B

    array-length v3, v3

    int-to-long v6, v3

    add-long/2addr v4, v6

    add-long/2addr v4, v8

    iget-object v3, v2, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl$SessionEventData;->sessionEventId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    int-to-long v6, v3

    add-long/2addr v4, v6

    iget v3, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;->h:I

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    invoke-direct {p0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;->a()V

    :cond_2
    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-wide v4, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;->c:J

    iget-object v3, v2, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl$SessionEventData;->data:[B

    array-length v3, v3

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;->c:J

    iget-wide v4, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;->c:J

    add-long/2addr v4, v8

    iput-wide v4, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;->c:J

    iget-wide v4, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;->c:J

    iget-object v2, v2, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl$SessionEventData;->sessionEventId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    int-to-long v2, v2

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;->c:J

    iget-wide v2, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;->c:J

    add-long/2addr v2, v8

    iput-wide v2, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;->c:J

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent$SessionEventCommittedListener;->committed(Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;)V

    goto/16 :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;->a()V

    :pswitch_4
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;->i:Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogListener;

    invoke-interface {v0, v3}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogListener;->calllogDataGenerated([B)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public stopCalllog()V
    .locals 5

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;->f:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    new-instance v1, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;

    const/16 v2, 0x16

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;-><init>(BLjava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;->f:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    invoke-interface {v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->getVRAddr()[Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-interface {v0, v1, p0, v2, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->send(Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageHandler;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
