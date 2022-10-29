.class public Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageHandler;
.implements Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Command;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$TransactionLogEntry;
    }
.end annotation


# static fields
.field public static final INTERNAL_COMPLETION_CAUSE_CONN_FAILED:Ljava/lang/String; = "CONN_FAILED"

.field public static final INTERNAL_COMPLETION_CAUSE_FINAL_RESULT:Ljava/lang/String; = "FINAL_RESULT"

.field public static final INTERNAL_COMPLETION_CAUSE_INTERNAL_ERROR:Ljava/lang/String; = "INTERNAL_ERROR"

.field public static final INTERNAL_COMPLETION_CAUSE_QUERY_ERROR:Ljava/lang/String; = "QUERY_ERROR"

.field public static final INTERNAL_COMPLETION_CAUSE_QUERY_RETRY:Ljava/lang/String; = "QUERY_RETRY"

.field public static final INTERNAL_COMPLETION_CAUSE_REMOTE_DISC:Ljava/lang/String; = "REMOTE_DISC"

.field public static final INTERNAL_COMPLETION_CAUSE_TIMEOUT_CMD:Ljava/lang/String; = "TIMEOUT_CMD"

.field public static final INTERNAL_COMPLETION_CAUSE_TIMEOUT_IDLE:Ljava/lang/String; = "TIMEOUT_IDLE"

.field public static final INTERNAL_COMPLETION_CAUSE_UNKNOWN_ERROR:Ljava/lang/String; = "UNKNOWN_ERROR"

.field public static final STATE_BEGUN:S = 0x0s

.field public static final STATE_ENDED:S = 0x1s

.field public static final STATE_EXPIRED:S = 0x2s

.field public static final STATE_IDLE:S = -0x1s

.field private static final a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;


# instance fields
.field private b:Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;

.field private c:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/NMASResourceListener;

.field private d:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/PDXCommandListener;

.field private e:Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;

.field private f:Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;

.field private g:S

.field private h:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

.field private i:Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

.field private j:J

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$TransactionLogEntry;

.field private o:Ljava/lang/Object;

.field protected tranId:B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory;->getLog(Ljava/lang/Class;)Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    return-void
.end method

.method protected constructor <init>(Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;Lcom/nuance/nmsp/client/sdk/components/resource/nmas/PDXCommandListener;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;Ljava/lang/String;SSLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;Lcom/nuance/nmsp/client/sdk/components/resource/nmas/NMASResourceListener;B)V
    .registers 32

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->d:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/PDXCommandListener;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->e:Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;

    const/4 v2, -0x1

    iput-short v2, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->g:S

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->m:Z

    sget-object v2, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1f

    sget-object v2, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v3, "PDXTransactionImpl()"

    invoke-virtual {v2, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_1f
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->o:Ljava/lang/Object;

    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->h:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    iput-object p5, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->e:Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;

    iput-object p2, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->d:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/PDXCommandListener;

    move-wide/from16 v0, p20

    iput-wide v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->j:J

    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->b:Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;

    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->c:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/NMASResourceListener;

    move/from16 v0, p25

    iput-byte v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->tranId:B

    iput-object p3, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->l:Ljava/lang/String;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->k:Z

    invoke-virtual/range {p23 .. p23}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;->getManager()Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;

    move-result-object v2

    check-cast v2, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;

    invoke-virtual {v2}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;->getResourceLogs()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5e

    new-instance v2, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$TransactionLogEntry;

    iget-byte v3, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->tranId:B

    invoke-direct {v2, v3, p0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$TransactionLogEntry;-><init>(ILcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;)V

    iput-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->n:Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$TransactionLogEntry;

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->n:Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$TransactionLogEntry;

    const-string/jumbo v3, "INTERNAL_ERROR"

    invoke-static {v2, v3}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->a(Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$TransactionLogEntry;Ljava/lang/String;)V

    :cond_5e
    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->o:Ljava/lang/Object;

    monitor-enter v3

    const/4 v2, 0x0

    :try_start_62
    iput-short v2, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->g:S

    monitor-exit v3
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_c8

    const/16 v2, 0x12

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p6, v2, v3

    const/4 v3, 0x1

    aput-object p7, v2, v3

    const/4 v3, 0x2

    aput-object p8, v2, v3

    const/4 v3, 0x3

    aput-object p9, v2, v3

    const/4 v3, 0x4

    aput-object p10, v2, v3

    const/4 v3, 0x5

    aput-object p11, v2, v3

    const/4 v3, 0x6

    aput-object p12, v2, v3

    const/4 v3, 0x7

    aput-object p13, v2, v3

    const/16 v3, 0x8

    new-instance v4, Ljava/lang/Short;

    move/from16 v0, p14

    invoke-direct {v4, v0}, Ljava/lang/Short;-><init>(S)V

    aput-object v4, v2, v3

    const/16 v3, 0x9

    new-instance v4, Ljava/lang/Short;

    move/from16 v0, p15

    invoke-direct {v4, v0}, Ljava/lang/Short;-><init>(S)V

    aput-object v4, v2, v3

    const/16 v3, 0xa

    aput-object p16, v2, v3

    const/16 v3, 0xb

    aput-object p17, v2, v3

    const/16 v3, 0xc

    aput-object p18, v2, v3

    const/16 v3, 0xd

    aput-object p19, v2, v3

    const/16 v3, 0xe

    aput-object p4, v2, v3

    const/16 v3, 0xf

    aput-object p3, v2, v3

    const/16 v3, 0x10

    aput-object p22, v2, v3

    new-instance v3, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;-><init>(BLjava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {p1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->getVRAddr()[Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-interface {p1, v3, p0, v2, v4}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->send(Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageHandler;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :catchall_c8
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method static synthetic a()Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;
    .registers 1

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    return-object v0
.end method

.method static synthetic a(Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->o:Ljava/lang/Object;

    return-object v0
.end method

.method private static a([B)Ljava/lang/String;
    .registers 6

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_6
    array-length v2, p0

    if-ge v0, v2, :cond_3c

    aget-byte v2, p0, v0

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_38

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_23
    const/4 v2, 0x3

    if-eq v0, v2, :cond_30

    const/4 v2, 0x5

    if-eq v0, v2, :cond_30

    const/4 v2, 0x7

    if-eq v0, v2, :cond_30

    const/16 v2, 0x9

    if-ne v0, v2, :cond_35

    :cond_30
    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_23

    :cond_3c
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;S)S
    .registers 3

    const/4 v0, -0x1

    iput-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->g:S

    return v0
.end method

.method private a(Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;)V
    .registers 6

    if-eqz p1, :cond_2a

    const-string/jumbo v0, "NMASCommand"

    invoke-interface {p1, v0}, Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;->createChildEventBuilder(Ljava/lang/String;)Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;

    move-result-object v0

    :try_start_9
    const-string/jumbo v1, "Name"

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->l:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;

    move-result-object v0

    const-string/jumbo v1, "Tid"

    new-instance v2, Ljava/lang/Integer;

    iget-byte v3, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->tranId:B

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;->commit()Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->f:Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;
    :try_end_2a
    .catch Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventAlreadyCommittedException; {:try_start_9 .. :try_end_2a} :catch_2b

    :cond_2a
    :goto_2a
    return-void

    :catch_2b
    move-exception v0

    goto :goto_2a
.end method

.method private static a(Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$TransactionLogEntry;Ljava/lang/String;)V
    .registers 2

    if-eqz p0, :cond_5

    invoke-static {p0, p1}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$TransactionLogEntry;->a(Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$TransactionLogEntry;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method static synthetic a(Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$TransactionLogEntry;)V
    .registers 4

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->b:Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->getManager()Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;->getResourceLogs()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    if-nez v0, :cond_19

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "appendLogToResLogs: NMSPDefines.DEVICE_CMD_LOG_TO_SERVER_ENABLED is disabled."

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->info(Ljava/lang/Object;)V

    :cond_18
    :goto_18
    return-void

    :cond_19
    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_18
.end method

.method static synthetic a(Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$TransactionLogEntry;Ljava/lang/String;)V
    .registers 3

    invoke-static {p1, p2}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->a(Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$TransactionLogEntry;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->f:Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->f:Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;

    invoke-interface {v0, p1}, Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;->createChildEventBuilder(Ljava/lang/String;)Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;->commit()Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;

    :cond_d
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .registers 5

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->f:Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->f:Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;

    const-string/jumbo v1, "NMASAudioParameter"

    invoke-interface {v0, v1}, Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;->createChildEventBuilder(Ljava/lang/String;)Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;

    move-result-object v0

    :try_start_d
    const-string/jumbo v1, "Name"

    invoke-interface {v0, v1, p1}, Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;

    move-result-object v0

    const-string/jumbo v1, "AudioId"

    invoke-interface {v0, v1, p2}, Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;->putInteger(Ljava/lang/String;I)Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;->commit()Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;
    :try_end_1e
    .catch Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventAlreadyCommittedException; {:try_start_d .. :try_end_1e} :catch_1f

    :cond_1e
    :goto_1e
    return-void

    :catch_1f
    move-exception v0

    goto :goto_1e
.end method

.method private a(Ljava/lang/String;Z)V
    .registers 5

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->f:Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->f:Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;

    const-string/jumbo v1, "NMASResponse"

    invoke-interface {v0, v1}, Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;->createChildEventBuilder(Ljava/lang/String;)Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;

    move-result-object v0

    :try_start_d
    const-string/jumbo v1, "ResultType"

    invoke-interface {v0, v1, p1}, Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;

    move-result-object v0

    const-string/jumbo v1, "QUERY_RESULT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_24

    const-string/jumbo v1, "IsFinal"

    invoke-interface {v0, v1, p2}, Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;->putBoolean(Ljava/lang/String;Z)Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;
    :try_end_23
    .catch Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventAlreadyCommittedException; {:try_start_d .. :try_end_23} :catch_28

    move-result-object v0

    :cond_24
    :goto_24
    invoke-interface {v0}, Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;->commit()Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;

    :cond_27
    return-void

    :catch_28
    move-exception v1

    goto :goto_24
.end method

.method static synthetic b(Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;)Lcom/nuance/nmsp/client/sdk/components/resource/nmas/PDXCommandListener;
    .registers 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->d:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/PDXCommandListener;

    return-object v0
.end method

.method static synthetic c(Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;)Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$TransactionLogEntry;
    .registers 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->n:Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$TransactionLogEntry;

    return-object v0
.end method

.method static synthetic d(Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;)Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;
    .registers 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->e:Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;

    return-object v0
.end method


# virtual methods
.method public end()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmsp/client/sdk/components/general/TransactionAlreadyFinishedException;,
            Lcom/nuance/nmsp/client/sdk/components/general/TransactionExpiredException;
        }
    .end annotation

    const/4 v3, 0x1

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "PDXTransactionImpl.end()"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_11
    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->o:Ljava/lang/Object;

    monitor-enter v1

    :try_start_14
    iget-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->g:S

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2d

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v2, "PDXTransactionImpl.end() transaction already finished!"

    invoke-virtual {v0, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/general/TransactionAlreadyFinishedException;

    const-string/jumbo v2, "transaction already finished!"

    invoke-direct {v0, v2}, Lcom/nuance/nmsp/client/sdk/components/general/TransactionAlreadyFinishedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2a
    .catchall {:try_start_14 .. :try_end_2a} :catchall_2a

    :catchall_2a
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2d
    :try_start_2d
    iget-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->g:S

    if-nez v0, :cond_4f

    const/4 v0, 0x1

    iput-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->g:S

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->h:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    new-instance v2, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;-><init>(BLjava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->h:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    invoke-interface {v4}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->getVRAddr()[Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-interface {v0, v2, p0, v3, v4}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->send(Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageHandler;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4d
    monitor-exit v1

    return-void

    :cond_4f
    iget-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->g:S

    if-ne v0, v3, :cond_64

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v2, "PDXTransactionImpl.end() transaction already finished!"

    invoke-virtual {v0, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/general/TransactionAlreadyFinishedException;

    const-string/jumbo v2, "transaction already finished!"

    invoke-direct {v0, v2}, Lcom/nuance/nmsp/client/sdk/components/general/TransactionAlreadyFinishedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_64
    iget-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->g:S

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4d

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v2, "PDXTransactionImpl.end() transaction already expired!"

    invoke-virtual {v0, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/general/TransactionExpiredException;

    const-string/jumbo v2, "transaction already expired!"

    invoke-direct {v0, v2}, Lcom/nuance/nmsp/client/sdk/components/general/TransactionExpiredException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7a
    .catchall {:try_start_2d .. :try_end_7a} :catchall_2a
.end method

.method public handleMessage(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 27

    check-cast p1, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;->data:Ljava/lang/Object;

    move-object/from16 v0, p1

    iget-byte v3, v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;->command:B

    packed-switch v3, :pswitch_data_31c

    :cond_d
    :goto_d
    return-void

    :pswitch_e
    check-cast v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v3, v2, v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v4, v2, v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v5, v2, v5

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v6, v2, v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x4

    aget-object v7, v2, v7

    check-cast v7, Ljava/lang/String;

    const/4 v8, 0x5

    aget-object v8, v2, v8

    check-cast v8, Ljava/lang/String;

    const/4 v9, 0x6

    aget-object v9, v2, v9

    check-cast v9, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    const/4 v10, 0x7

    aget-object v10, v2, v10

    check-cast v10, Ljava/lang/String;

    const/16 v11, 0x8

    aget-object v11, v2, v11

    check-cast v11, Ljava/lang/Short;

    invoke-virtual {v11}, Ljava/lang/Short;->shortValue()S

    move-result v11

    const/16 v12, 0x9

    aget-object v12, v2, v12

    check-cast v12, Ljava/lang/Short;

    invoke-virtual {v12}, Ljava/lang/Short;->shortValue()S

    move-result v12

    const/16 v13, 0xa

    aget-object v13, v2, v13

    check-cast v13, Ljava/lang/String;

    const/16 v14, 0xb

    aget-object v14, v2, v14

    check-cast v14, Ljava/lang/String;

    const/16 v15, 0xc

    aget-object v15, v2, v15

    check-cast v15, Ljava/lang/String;

    const/16 v16, 0xd

    aget-object v16, v2, v16

    check-cast v16, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->e:Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->getSessionId()[B

    move-result-object v17

    const/16 v18, 0xe

    aget-object v18, v2, v18

    check-cast v18, Ljava/lang/String;

    const/16 v19, 0xf

    aget-object v19, v2, v19

    check-cast v19, Ljava/lang/String;

    const/16 v20, 0x10

    aget-object v20, v2, v20

    check-cast v20, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;

    new-instance v2, Lcom/nuance/nmsp/client/sdk/oem/BluetoothSystemOEM;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->b:Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;->parameters:Ljava/util/Vector;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v2, v0}, Lcom/nuance/nmsp/client/sdk/oem/BluetoothSystemOEM;-><init>(Ljava/util/Vector;)V

    invoke-virtual {v2}, Lcom/nuance/nmsp/client/sdk/oem/BluetoothSystemOEM;->isBluetoothHeadsetConnected()Z

    move-result v2

    if-eqz v2, :cond_9d

    invoke-static {v9}, Lcom/nuance/nmsp/client/sdk/common/util/Util;->adjustCodecForBluetooth(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    move-result-object v9

    :cond_9d
    invoke-static {}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->getDefaultRequestId()J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->e:Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;

    invoke-virtual {v2}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->getSessionEvent()Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->a(Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;)V

    new-instance v2, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryBegin;

    invoke-direct/range {v2 .. v20}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryBegin;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;Ljava/lang/String;SSLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->b:Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;

    invoke-virtual {v3}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->getManager()Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;

    move-result-object v3

    check-cast v3, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;

    invoke-virtual {v3}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ManagerImpl;->getResourceLogs()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Vector;

    if-nez v3, :cond_1b2

    sget-object v3, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v4, "appendLogToQueryBegin: NMSPDefines.DEVICE_CMD_LOG_TO_SERVER_ENABLED is disabled"

    invoke-virtual {v3, v4}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->info(Ljava/lang/Object;)V

    :goto_cd
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->e:Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;

    const/16 v3, 0xa25

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "SEND_BCP_BEGIN"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-byte v5, v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->tranId:B

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryBegin;->getMessage()[B

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-byte v7, v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->tranId:B

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->b:Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;

    const/4 v11, 0x0

    move-object v2, v8

    move-wide/from16 v8, v22

    invoke-virtual/range {v2 .. v11}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->postBcpMessage(SLjava/lang/String;[B[BBJLcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSessionListener;Z)V

    if-eqz v17, :cond_d

    :try_start_fd
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->m:Z

    if-nez v2, :cond_d

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->m:Z

    sget-object v2, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "PDXCommandCreated() called from handleInit()"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v17 .. v17}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->a([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-byte v4, v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->tranId:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->c:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/NMASResourceListener;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->c:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/NMASResourceListener;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v17 .. v17}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->a([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-byte v4, v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->tranId:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/NMASResourceListener;->PDXCommandCreated(Ljava/lang/String;)V
    :try_end_17a
    .catch Ljava/lang/Throwable; {:try_start_fd .. :try_end_17a} :catch_17c

    goto/16 :goto_d

    :catch_17c
    move-exception v2

    sget-object v3, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "got exp in PDXCommandListener.PDXCommandCreated() ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "] msg ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    goto/16 :goto_d

    :cond_1b2
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v4

    if-nez v4, :cond_1c2

    sget-object v3, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v4, "appendLogToQueryBegin: nmasResLogsToServer is empty, nothing to log to server"

    invoke-virtual {v3, v4}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->info(Ljava/lang/Object;)V

    goto/16 :goto_cd

    :cond_1c2
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v6

    new-instance v7, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;

    invoke-direct {v7}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;-><init>()V

    new-instance v8, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;

    invoke-direct {v8}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    :goto_1d2
    if-ge v5, v6, :cond_22c

    invoke-virtual {v3, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$TransactionLogEntry;

    invoke-virtual {v4}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$TransactionLogEntry;->getTranId()I

    move-result v9

    move-object/from16 v0, p0

    iget-byte v10, v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->tranId:B

    if-eq v9, v10, :cond_228

    new-instance v9, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;

    invoke-direct {v9}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;-><init>()V

    const-string/jumbo v10, "id"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$TransactionLogEntry;->getSessionId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$TransactionLogEntry;->getTranId()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0xc1

    invoke-virtual {v9, v10, v11, v12}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->put(Ljava/lang/String;Ljava/lang/String;S)V

    const-string/jumbo v10, "status"

    invoke-virtual {v4}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$TransactionLogEntry;->getCompCause()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0xc1

    invoke-virtual {v9, v10, v11, v12}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->put(Ljava/lang/String;Ljava/lang/String;S)V

    invoke-virtual {v8, v9}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;->addDictionary(Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;)V

    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$TransactionLogEntry;->setSent(Z)V

    :cond_228
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_1d2

    :cond_22c
    const-string/jumbo v3, "device_log"

    invoke-virtual {v7, v3, v8}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->addSequence(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;)V

    const-string/jumbo v3, "app_info"

    invoke-virtual {v2, v3, v7}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryBegin;->addDictionary(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;)V

    goto/16 :goto_cd

    :pswitch_23a
    check-cast v2, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Parameter;

    move-object v3, v2

    check-cast v3, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXParam;

    invoke-virtual {v3}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXParam;->getType()B

    move-result v3

    const/16 v4, 0x7f

    if-ne v3, v4, :cond_260

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->e:Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;

    move-object v3, v2

    check-cast v3, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTTSParam;

    invoke-virtual {v3}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTTSParam;->getAudioId()I

    move-result v5

    move-object v3, v2

    check-cast v3, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTTSParam;

    invoke-virtual {v3}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTTSParam;->getAudioSink()Lcom/nuance/nmsp/client/sdk/components/general/NMSPAudioSink;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->b:Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;

    invoke-virtual {v4, v5, v3, v6}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->addAudioSink(ILcom/nuance/nmsp/client/sdk/components/general/NMSPAudioSink;Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSessionListener;)V

    :cond_260
    invoke-static {}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->getDefaultRequestId()J

    move-result-wide v8

    instance-of v3, v2, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXAudioParam;

    if-eqz v3, :cond_27b

    move-object v3, v2

    check-cast v3, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXAudioParam;

    invoke-virtual {v3}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXAudioParam;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v3, v2

    check-cast v3, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXAudioParam;

    invoke-virtual {v3}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXAudioParam;->getBufferId()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->a(Ljava/lang/String;I)V

    :cond_27b
    new-instance v5, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryParameter;

    check-cast v2, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXParam;

    invoke-direct {v5, v2}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryParameter;-><init>(Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXParam;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->e:Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;

    const/16 v3, 0xa19

    const-string/jumbo v4, "SEND_BCP_DATA"

    invoke-virtual {v5}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryParameter;->toByteArray()[B

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-byte v7, v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->tranId:B

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->b:Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;

    const/4 v11, 0x0

    invoke-virtual/range {v2 .. v11}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->postBcpMessage(SLjava/lang/String;[B[BBJLcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSessionListener;Z)V

    goto/16 :goto_d

    :pswitch_29e
    check-cast v2, [B

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->getDefaultRequestId()J

    move-result-wide v8

    new-instance v5, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXEnrollmentAudio;

    invoke-direct {v5, v2}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXEnrollmentAudio;-><init>([B)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->e:Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;

    const/16 v3, 0xa19

    const-string/jumbo v4, "SEND_BCP_DATA"

    invoke-virtual {v5}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXEnrollmentAudio;->toByteArray()[B

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-byte v7, v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->tranId:B

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->b:Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;

    const/4 v11, 0x0

    invoke-virtual/range {v2 .. v11}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->postBcpMessage(SLjava/lang/String;[B[BBJLcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSessionListener;Z)V

    goto/16 :goto_d

    :pswitch_2c5
    invoke-static {}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/ResourceImpl;->getDefaultRequestId()J

    move-result-wide v8

    new-instance v5, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryEnd;

    invoke-direct {v5}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryEnd;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->e:Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;

    const/16 v3, 0xa19

    const-string/jumbo v4, "SEND_BCP_DATA"

    invoke-virtual {v5}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryEnd;->toByteArray()[B

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-byte v7, v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->tranId:B

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->b:Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/NMASResourceImpl;

    const/4 v11, 0x0

    invoke-virtual/range {v2 .. v11}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->postBcpMessage(SLjava/lang/String;[B[BBJLcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSessionListener;Z)V

    new-instance v2, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$1;-><init>(Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->i:Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->h:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->i:Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->j:J

    invoke-interface {v2, v3, v4, v5}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->scheduleTask(Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;J)V

    goto/16 :goto_d

    :pswitch_304
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->d:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/PDXCommandListener;

    const/4 v3, 0x4

    invoke-interface {v2, v3}, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/PDXCommandListener;->PDXCommandEvent(S)V

    goto/16 :goto_d

    :pswitch_30e
    check-cast v2, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Command$CompletionCause;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->n:Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$TransactionLogEntry;

    if-eqz v3, :cond_d

    invoke-virtual {v3, v2}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$TransactionLogEntry;->setCompCause(Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Command$CompletionCause;)V

    goto/16 :goto_d

    nop

    :pswitch_data_31c
    .packed-switch 0x1
        :pswitch_e
        :pswitch_23a
        :pswitch_29e
        :pswitch_2c5
        :pswitch_304
        :pswitch_30e
    .end packed-switch
.end method

.method public isNetworkHealthy()Z
    .registers 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->e:Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->isNetworkHealthy()Z

    move-result v0

    return v0
.end method

.method public onQueryError(Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryError;B)V
    .registers 8

    const/4 v2, -0x1

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "PDXTransactionImpl.onQueryError()"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    iget-byte v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->tranId:B

    if-eq p2, v0, :cond_e

    :goto_d
    return-void

    :cond_e
    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->o:Ljava/lang/Object;

    monitor-enter v1

    :try_start_11
    iget-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->g:S

    if-eq v0, v2, :cond_1a

    iget-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->g:S

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1f

    :cond_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_1c

    goto :goto_d

    :catchall_1c
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1f
    const/4 v0, -0x1

    :try_start_20
    iput-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->g:S

    const-string/jumbo v0, "QUERY_ERROR"

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->i:Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->h:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->i:Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

    invoke-interface {v0, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->cancelTask(Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;)Z

    :cond_34
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->d:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/PDXCommandListener;
    :try_end_36
    .catchall {:try_start_20 .. :try_end_36} :catchall_1c

    if-eqz v0, :cond_45

    :try_start_38
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->n:Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$TransactionLogEntry;

    const-string/jumbo v2, "QUERY_ERROR"

    invoke-static {v0, v2}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->a(Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$TransactionLogEntry;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->d:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/PDXCommandListener;

    invoke-interface {v0, p1}, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/PDXCommandListener;->PDXQueryErrorReturned(Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryError;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_45} :catch_47
    .catchall {:try_start_38 .. :try_end_45} :catchall_1c

    :cond_45
    :goto_45
    :try_start_45
    monitor-exit v1

    goto :goto_d

    :catch_47
    move-exception v0

    sget-object v2, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "got exp in PDXCommandListener.PDXQueryErrorReturned() ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] msg ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V
    :try_end_7b
    .catchall {:try_start_45 .. :try_end_7b} :catchall_1c

    goto :goto_45
.end method

.method public onQueryResults(Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryResult;B)V
    .registers 8

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "PDXTransactionImpl.onQueryResults()"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_10
    iget-byte v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->tranId:B

    if-eq p2, v0, :cond_15

    :goto_14
    return-void

    :cond_15
    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->o:Ljava/lang/Object;

    monitor-enter v1

    :try_start_18
    iget-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->g:S

    const/4 v2, -0x1

    if-eq v0, v2, :cond_22

    iget-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->g:S

    const/4 v2, 0x2

    if-ne v0, v2, :cond_27

    :cond_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_24

    goto :goto_14

    :catchall_24
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_27
    const/4 v0, 0x1

    :try_start_28
    iput-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->k:Z

    const-string/jumbo v0, "QUERY_RESULT"

    invoke-virtual {p1}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryResult;->isFinalResponse()Z

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->a(Ljava/lang/String;Z)V

    invoke-virtual {p1}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryResult;->isFinalResponse()Z

    move-result v0

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->i:Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->h:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->i:Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

    invoke-interface {v0, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->cancelTask(Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;)Z

    :cond_45
    :goto_45
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->d:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/PDXCommandListener;
    :try_end_47
    .catchall {:try_start_28 .. :try_end_47} :catchall_24

    if-eqz v0, :cond_5c

    :try_start_49
    invoke-virtual {p1}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryResult;->isFinalResponse()Z

    move-result v0

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->n:Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$TransactionLogEntry;

    const-string/jumbo v2, "FINAL_RESULT"

    invoke-static {v0, v2}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->a(Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$TransactionLogEntry;Ljava/lang/String;)V

    :cond_57
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->d:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/PDXCommandListener;

    invoke-interface {v0, p1}, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/PDXCommandListener;->PDXQueryResultReturned(Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryResult;)V
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_5c} :catch_62
    .catchall {:try_start_49 .. :try_end_5c} :catchall_24

    :cond_5c
    :goto_5c
    :try_start_5c
    monitor-exit v1

    goto :goto_14

    :cond_5e
    invoke-virtual {p0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->resetCommandTimeoutTask()V

    goto :goto_45

    :catch_62
    move-exception v0

    sget-object v2, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "got exp in PDXCommandListener.PDXQueryResultReturned() ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] msg ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V
    :try_end_96
    .catchall {:try_start_5c .. :try_end_96} :catchall_24

    goto :goto_5c
.end method

.method public onQueryRetry(Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXQueryRetry;B)V
    .registers 8

    const/4 v2, -0x1

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "PDXTransactionImpl.onQueryRetry()"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    iget-byte v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->tranId:B

    if-eq p2, v0, :cond_e

    :goto_d
    return-void

    :cond_e
    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->o:Ljava/lang/Object;

    monitor-enter v1

    :try_start_11
    iget-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->g:S

    if-eq v0, v2, :cond_1a

    iget-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->g:S

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1f

    :cond_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_1c

    goto :goto_d

    :catchall_1c
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1f
    const/4 v0, -0x1

    :try_start_20
    iput-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->g:S

    const-string/jumbo v0, "QUERY_RETRY"

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->i:Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->h:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->i:Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

    invoke-interface {v0, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->cancelTask(Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;)Z

    :cond_34
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->d:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/PDXCommandListener;
    :try_end_36
    .catchall {:try_start_20 .. :try_end_36} :catchall_1c

    if-eqz v0, :cond_45

    :try_start_38
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->n:Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$TransactionLogEntry;

    const-string/jumbo v2, "QUERY_RETRY"

    invoke-static {v0, v2}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->a(Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$TransactionLogEntry;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->d:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/PDXCommandListener;

    invoke-interface {v0, p1}, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/PDXCommandListener;->PDXQueryRetryReturned(Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryRetry;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_45} :catch_47
    .catchall {:try_start_38 .. :try_end_45} :catchall_1c

    :cond_45
    :goto_45
    :try_start_45
    monitor-exit v1

    goto :goto_d

    :catch_47
    move-exception v0

    sget-object v2, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "got exp in PDXCommandListener.PDXQueryRetryReturned() ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] msg ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V
    :try_end_7b
    .catchall {:try_start_45 .. :try_end_7b} :catchall_1c

    goto :goto_45
.end method

.method public onSessionConnected([B)V
    .registers 7

    const/4 v2, 0x1

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "PDXTransactionImpl.onSessionConnected()"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_11
    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->o:Ljava/lang/Object;

    monitor-enter v1

    :try_start_14
    iget-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->g:S

    if-eqz v0, :cond_1c

    iget-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->g:S
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_c5

    if-ne v0, v2, :cond_8e

    :cond_1c
    :try_start_1c
    invoke-static {p1}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->a([B)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->n:Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$TransactionLogEntry;

    if-eqz v2, :cond_27

    invoke-virtual {v2, v0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$TransactionLogEntry;->setSessionId(Ljava/lang/String;)V

    :cond_27
    iget-boolean v2, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->m:Z

    if-nez v2, :cond_8e

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->m:Z

    sget-object v2, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "PDXCommandCreated() called from onSessionConnected()"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-byte v4, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->tranId:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->c:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/NMASResourceListener;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->c:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/NMASResourceListener;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v3, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->tranId:B

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/NMASResourceListener;->PDXCommandCreated(Ljava/lang/String;)V
    :try_end_8e
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_8e} :catch_90
    .catchall {:try_start_1c .. :try_end_8e} :catchall_c5

    :cond_8e
    :goto_8e
    :try_start_8e
    monitor-exit v1

    return-void

    :catch_90
    move-exception v0

    sget-object v2, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "got exp in PDXCommandListener.PDXCommandCreated() ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] msg ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V
    :try_end_c4
    .catchall {:try_start_8e .. :try_end_c4} :catchall_c5

    goto :goto_8e

    :catchall_c5
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onSessionDisconnected(S)V
    .registers 10

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x3

    const/4 v3, -0x1

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_22

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "PDXTransactionImpl.onSessionDisconnected() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_22
    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->o:Ljava/lang/Object;

    monitor-enter v1

    :try_start_25
    iget-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->g:S

    if-ne v0, v5, :cond_34

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->i:Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->h:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->i:Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

    invoke-interface {v0, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->cancelTask(Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;)Z

    :cond_34
    iget-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->g:S

    if-ne v0, v6, :cond_3a

    monitor-exit v1
    :try_end_39
    .catchall {:try_start_25 .. :try_end_39} :catchall_53

    :goto_39
    return-void

    :cond_3a
    if-nez p1, :cond_56

    :try_start_3c
    iget-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->g:S

    if-eq v0, v3, :cond_4e

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->n:Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$TransactionLogEntry;

    const-string/jumbo v2, "REMOTE_DISC"

    invoke-static {v0, v2}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->a(Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$TransactionLogEntry;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->d:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/PDXCommandListener;

    const/4 v2, 0x3

    invoke-interface {v0, v2}, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/PDXCommandListener;->PDXCommandEvent(S)V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_4e} :catch_63
    .catchall {:try_start_3c .. :try_end_4e} :catchall_53

    :cond_4e
    :goto_4e
    const/4 v0, 0x2

    :try_start_4f
    iput-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->g:S

    monitor-exit v1
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_53

    goto :goto_39

    :catchall_53
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_56
    if-ne p1, v5, :cond_a3

    :try_start_58
    iget-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->g:S

    if-eq v0, v3, :cond_4e

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->d:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/PDXCommandListener;

    const/4 v2, 0x4

    invoke-interface {v0, v2}, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/PDXCommandListener;->PDXCommandEvent(S)V
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_62} :catch_63
    .catchall {:try_start_58 .. :try_end_62} :catchall_53

    goto :goto_4e

    :catch_63
    move-exception v0

    :try_start_64
    sget-object v2, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "got exp in PDXCommandListener.PDXCommandEvent() or PDXManagerListener.PDXManagerError() or PDXManagerListener.PDXManagerDisconnected() reasonCode ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] msg ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V
    :try_end_a2
    .catchall {:try_start_64 .. :try_end_a2} :catchall_53

    goto :goto_4e

    :cond_a3
    if-ne p1, v4, :cond_b8

    :try_start_a5
    iget-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->g:S

    if-eq v0, v3, :cond_4e

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->n:Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$TransactionLogEntry;

    const-string/jumbo v2, "TIMEOUT_IDLE"

    invoke-static {v0, v2}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->a(Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$TransactionLogEntry;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->d:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/PDXCommandListener;

    const/4 v2, 0x5

    invoke-interface {v0, v2}, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/PDXCommandListener;->PDXCommandEvent(S)V

    goto :goto_4e

    :cond_b8
    if-ne p1, v7, :cond_cc

    iget-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->g:S

    if-eq v0, v3, :cond_4e

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->n:Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$TransactionLogEntry;

    const-string/jumbo v2, "CONN_FAILED"

    invoke-static {v0, v2}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->a(Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$TransactionLogEntry;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->c:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/NMASResourceListener;

    invoke-interface {v0}, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/NMASResourceListener;->PDXCreateCommandFailed()V

    goto :goto_4e

    :cond_cc
    const/4 v0, 0x5

    if-ne p1, v0, :cond_e2

    iget-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->g:S

    if-eq v0, v3, :cond_4e

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->n:Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$TransactionLogEntry;

    const-string/jumbo v2, "CONN_FAILED"

    invoke-static {v0, v2}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->a(Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$TransactionLogEntry;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->c:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/NMASResourceListener;

    invoke-interface {v0}, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/NMASResourceListener;->PDXCreateCommandFailed()V

    goto/16 :goto_4e

    :cond_e2
    const/4 v0, 0x6

    if-ne p1, v0, :cond_f9

    iget-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->g:S

    if-eq v0, v3, :cond_4e

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->n:Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$TransactionLogEntry;

    const-string/jumbo v2, "REMOTE_DISC"

    invoke-static {v0, v2}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->a(Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$TransactionLogEntry;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->d:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/PDXCommandListener;

    const/4 v2, 0x3

    invoke-interface {v0, v2}, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/PDXCommandListener;->PDXCommandEvent(S)V

    goto/16 :goto_4e

    :cond_f9
    const/4 v0, 0x7

    if-ne p1, v0, :cond_10f

    iget-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->g:S

    if-eq v0, v3, :cond_4e

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->n:Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$TransactionLogEntry;

    const-string/jumbo v2, "CONN_FAILED"

    invoke-static {v0, v2}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->a(Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$TransactionLogEntry;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->c:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/NMASResourceListener;

    invoke-interface {v0}, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/NMASResourceListener;->PDXCreateCommandFailed()V

    goto/16 :goto_4e

    :cond_10f
    const/16 v0, 0x8

    if-ne p1, v0, :cond_4e

    iget-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->g:S

    if-eq v0, v3, :cond_4e

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->n:Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$TransactionLogEntry;

    const-string/jumbo v2, "REMOTE_DISC"

    invoke-static {v0, v2}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->a(Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$TransactionLogEntry;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->d:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/PDXCommandListener;

    const/4 v2, 0x3

    invoke-interface {v0, v2}, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/PDXCommandListener;->PDXCommandEvent(S)V
    :try_end_125
    .catch Ljava/lang/Throwable; {:try_start_a5 .. :try_end_125} :catch_63
    .catchall {:try_start_a5 .. :try_end_125} :catchall_53

    goto/16 :goto_4e
.end method

.method public onVapPlayBeginReceived()V
    .registers 1

    invoke-virtual {p0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->resetCommandTimeoutTask()V

    return-void
.end method

.method public onVapPlayEndReceived()V
    .registers 1

    invoke-virtual {p0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->resetCommandTimeoutTask()V

    return-void
.end method

.method public onVapPlayReceived()V
    .registers 1

    invoke-virtual {p0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->resetCommandTimeoutTask()V

    return-void
.end method

.method protected resetCommandTimeoutTask()V
    .registers 5

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->i:Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->h:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->i:Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

    invoke-interface {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->cancelTask(Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;)Z

    move-result v0

    if-eqz v0, :cond_15

    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$2;

    invoke-direct {v0, p0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$2;-><init>(Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;)V

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->i:Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

    :cond_15
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->h:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->i:Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

    iget-wide v2, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->j:J

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->scheduleTask(Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;J)V

    :cond_1e
    return-void
.end method

.method public sendEnrollmentAudio([B)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmsp/client/sdk/components/general/TransactionAlreadyFinishedException;,
            Lcom/nuance/nmsp/client/sdk/components/general/TransactionExpiredException;
        }
    .end annotation

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "PDXTransactionImpl.sendEnrollmentAudio()"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->o:Ljava/lang/Object;

    monitor-enter v1

    :try_start_b
    iget-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->g:S

    const/4 v2, -0x1

    if-ne v0, v2, :cond_24

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v2, "PDXTransactionImpl.sendEnrollmentAudio() transaction already finished!"

    invoke-virtual {v0, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/general/TransactionAlreadyFinishedException;

    const-string/jumbo v2, "transaction already finished!"

    invoke-direct {v0, v2}, Lcom/nuance/nmsp/client/sdk/components/general/TransactionAlreadyFinishedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_21
    .catchall {:try_start_b .. :try_end_21} :catchall_21

    :catchall_21
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_24
    :try_start_24
    iget-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->g:S

    if-nez v0, :cond_62

    if-nez p1, :cond_33

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "enrollment audio is null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    array-length v0, p1

    if-nez v0, :cond_3f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "enrollment audio is empty"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3f
    array-length v0, p1

    new-array v0, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {p1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->h:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    new-instance v3, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;

    const/4 v4, 0x3

    invoke-direct {v3, v4, v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;-><init>(BLjava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v4, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->h:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    invoke-interface {v4}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->getVRAddr()[Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-interface {v2, v3, p0, v0, v4}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->send(Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageHandler;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_60
    monitor-exit v1

    return-void

    :cond_62
    iget-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->g:S

    const/4 v2, 0x1

    if-ne v0, v2, :cond_78

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v2, "PDXTransactionImpl.sendEnrollmentAudio() transaction already finished!"

    invoke-virtual {v0, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/general/TransactionAlreadyFinishedException;

    const-string/jumbo v2, "transaction already finished!"

    invoke-direct {v0, v2}, Lcom/nuance/nmsp/client/sdk/components/general/TransactionAlreadyFinishedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_78
    iget-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->g:S

    const/4 v2, 0x2

    if-ne v0, v2, :cond_60

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v2, "PDXTransactionImpl.sendEnrollmentAudio() transaction already expired!"

    invoke-virtual {v0, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/general/TransactionExpiredException;

    const-string/jumbo v2, "transaction already expired!"

    invoke-direct {v0, v2}, Lcom/nuance/nmsp/client/sdk/components/general/TransactionExpiredException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8e
    .catchall {:try_start_24 .. :try_end_8e} :catchall_21
.end method

.method public sendParam(Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Parameter;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmsp/client/sdk/components/general/TransactionAlreadyFinishedException;,
            Lcom/nuance/nmsp/client/sdk/components/general/TransactionExpiredException;
        }
    .end annotation

    const/4 v3, 0x2

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "PDXTransactionImpl.sendParam()"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_11
    if-nez p1, :cond_1c

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->o:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1f
    iget-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->g:S

    const/4 v2, -0x1

    if-ne v0, v2, :cond_38

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v2, "PDXTransactionImpl.sendParam() transaction already finished!"

    invoke-virtual {v0, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/general/TransactionAlreadyFinishedException;

    const-string/jumbo v2, "transaction already finished!"

    invoke-direct {v0, v2}, Lcom/nuance/nmsp/client/sdk/components/general/TransactionAlreadyFinishedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_35
    .catchall {:try_start_1f .. :try_end_35} :catchall_35

    :catchall_35
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_38
    :try_start_38
    iget-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->g:S

    if-nez v0, :cond_56

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->h:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    new-instance v2, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;

    const/4 v3, 0x2

    invoke-direct {v2, v3, p1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;-><init>(BLjava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->h:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    invoke-interface {v4}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->getVRAddr()[Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-interface {v0, v2, p0, v3, v4}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->send(Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageHandler;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_54
    monitor-exit v1

    return-void

    :cond_56
    iget-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->g:S

    const/4 v2, 0x1

    if-ne v0, v2, :cond_6c

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v2, "PDXTransactionImpl.sendParam() transaction already finished!"

    invoke-virtual {v0, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/general/TransactionAlreadyFinishedException;

    const-string/jumbo v2, "transaction already finished!"

    invoke-direct {v0, v2}, Lcom/nuance/nmsp/client/sdk/components/general/TransactionAlreadyFinishedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6c
    iget-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->g:S

    if-ne v0, v3, :cond_54

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v2, "PDXTransactionImpl.sendParam() transaction already expired!"

    invoke-virtual {v0, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/general/TransactionExpiredException;

    const-string/jumbo v2, "transaction already expired!"

    invoke-direct {v0, v2}, Lcom/nuance/nmsp/client/sdk/components/general/TransactionExpiredException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_81
    .catchall {:try_start_38 .. :try_end_81} :catchall_35
.end method

.method public setLog(Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Command$CompletionCause;)V
    .registers 7

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->h:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    new-instance v1, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;

    const/4 v2, 0x6

    invoke-direct {v1, v2, p1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;-><init>(BLjava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->h:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    invoke-interface {v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->getVRAddr()[Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-interface {v0, v1, p0, v2, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->send(Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageHandler;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public transactionOver()V
    .registers 7

    const/4 v3, 0x2

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->o:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    iget-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->g:S

    const/4 v2, 0x1

    if-ne v0, v2, :cond_14

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->i:Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->h:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->i:Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

    invoke-interface {v0, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->cancelTask(Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;)Z

    :cond_14
    iget-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->g:S

    if-ne v0, v3, :cond_1a

    monitor-exit v1

    :goto_19
    return-void

    :cond_1a
    iget-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->g:S

    const/4 v2, -0x1

    if-eq v0, v2, :cond_42

    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->k:Z

    if-nez v0, :cond_29

    const-string/jumbo v0, "CommandAbort"

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->a(Ljava/lang/String;)V

    :cond_29
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->h:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    new-instance v2, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;-><init>(BLjava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->h:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    invoke-interface {v4}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->getVRAddr()[Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-interface {v0, v2, p0, v3, v4}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->send(Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageHandler;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_42
    const/4 v0, 0x2

    iput-short v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->g:S

    monitor-exit v1
    :try_end_46
    .catchall {:try_start_4 .. :try_end_46} :catchall_47

    goto :goto_19

    :catchall_47
    move-exception v0

    monitor-exit v1

    throw v0
.end method
