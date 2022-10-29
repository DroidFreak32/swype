.class public Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageHandler;
.implements Lcom/nuance/nmsp/client/sdk/components/core/XMode$XModeListener;


# static fields
.field private static final a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

.field private static m:[B

.field private static p:I

.field private static x:[Ljava/lang/String;


# instance fields
.field private b:Ljava/util/Hashtable;

.field private c:Ljava/util/Hashtable;

.field private d:Ljava/util/Hashtable;

.field private e:Lcom/nuance/nmsp/client/sdk/components/core/XMode;

.field private f:Ljava/lang/String;

.field private g:S

.field private h:Ljava/util/Vector;

.field private i:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

.field private j:Lcom/nuance/nmsp/client/sdk/components/resource/common/ManagerListener;

.field private k:Ljava/util/Vector;

.field private l:[B

.field private n:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

.field private o:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

.field private q:J

.field private r:Z

.field private s:Lcom/nuance/nmsp/client/sdk/components/resource/common/Resource;

.field private t:J

.field private u:B

.field private v:Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;

.field private w:Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/16 v1, 0x10

    const/4 v3, 0x1

    const-class v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory;->getLog(Ljava/lang/Class;)Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-array v0, v1, [B

    sput-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->m:[B

    sput v3, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->p:I

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "0"

    aput-object v2, v0, v1

    const-string/jumbo v1, "1"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string/jumbo v2, "2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "8"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "9"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "A"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "B"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "C"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "D"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "E"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "F"

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->x:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;SLjava/lang/String;[BLjava/lang/String;Ljava/util/Vector;Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;Lcom/nuance/nmsp/client/sdk/components/resource/common/ManagerListener;)V
    .registers 20

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->l:[B

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->r:Z

    const-wide/16 v2, 0x1

    iput-wide v2, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->t:J

    const/4 v2, 0x1

    iput-byte v2, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->u:B

    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->f:Ljava/lang/String;

    iput-short p2, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->g:S

    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->i:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->j:Lcom/nuance/nmsp/client/sdk/components/resource/common/ManagerListener;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->s:Lcom/nuance/nmsp/client/sdk/components/resource/common/Resource;

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->k:Ljava/util/Vector;

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->b:Ljava/util/Hashtable;

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->c:Ljava/util/Hashtable;

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->d:Ljava/util/Hashtable;

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->h:Ljava/util/Vector;

    new-instance v2, Lcom/nuance/nmsp/client/sdk/components/core/XMode;

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->f:Ljava/lang/String;

    iget-short v4, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->g:S

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object v8, p0

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v2 .. v10}, Lcom/nuance/nmsp/client/sdk/components/core/XMode;-><init>(Ljava/lang/String;SLjava/lang/String;[BLjava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/XMode$XModeListener;Ljava/util/Vector;Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;)V

    iput-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->e:Lcom/nuance/nmsp/client/sdk/components/core/XMode;

    return-void
.end method

.method public static FormatUuid([B)Ljava/lang/String;
    .registers 7

    if-nez p0, :cond_6

    const-string/jumbo v0, ""

    :goto_5
    return-object v0

    :cond_6
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_c
    const/16 v2, 0x10

    if-ge v0, v2, :cond_50

    aget-byte v2, p0, v0

    and-int/lit16 v3, v2, 0xf0

    int-to-byte v3, v3

    ushr-int/lit8 v3, v3, 0x4

    int-to-byte v3, v3

    and-int/lit8 v3, v3, 0xf

    int-to-byte v3, v3

    and-int/lit8 v2, v2, 0xf

    int-to-byte v2, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->x:[Ljava/lang/String;

    aget-object v3, v5, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->x:[Ljava/lang/String;

    aget-object v2, v4, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x3

    if-eq v0, v2, :cond_47

    const/4 v2, 0x5

    if-eq v0, v2, :cond_47

    const/4 v2, 0x7

    if-eq v0, v2, :cond_47

    const/16 v2, 0x9

    if-ne v0, v2, :cond_4d

    :cond_47
    const-string/jumbo v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4d
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_50
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method private a()V
    .registers 4

    :goto_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->k:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4e

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->k:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->k:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->removeElementAt(I)V

    iget-byte v1, v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;->command:B

    packed-switch v1, :pswitch_data_50

    :pswitch_1b
    goto :goto_0

    :pswitch_1c
    const/4 v1, 0x1

    iget-object v0, v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;->data:Ljava/lang/Object;

    invoke-direct {p0, v1, v0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->a(BLjava/lang/Object;)V

    goto :goto_0

    :pswitch_23
    const/4 v1, 0x2

    iget-object v0, v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;->data:Ljava/lang/Object;

    invoke-direct {p0, v1, v0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->a(BLjava/lang/Object;)V

    goto :goto_0

    :pswitch_2a
    const/4 v1, 0x4

    iget-object v0, v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;->data:Ljava/lang/Object;

    invoke-direct {p0, v1, v0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->a(BLjava/lang/Object;)V

    goto :goto_0

    :pswitch_31
    const/4 v1, 0x5

    iget-object v0, v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;->data:Ljava/lang/Object;

    invoke-direct {p0, v1, v0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->a(BLjava/lang/Object;)V

    goto :goto_0

    :pswitch_38
    const/4 v1, 0x6

    iget-object v0, v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;->data:Ljava/lang/Object;

    invoke-direct {p0, v1, v0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->a(BLjava/lang/Object;)V

    goto :goto_0

    :pswitch_3f
    const/4 v1, 0x7

    iget-object v0, v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;->data:Ljava/lang/Object;

    invoke-direct {p0, v1, v0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->a(BLjava/lang/Object;)V

    goto :goto_0

    :pswitch_46
    const/16 v1, 0x8

    iget-object v0, v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;->data:Ljava/lang/Object;

    invoke-direct {p0, v1, v0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->a(BLjava/lang/Object;)V

    goto :goto_0

    :cond_4e
    return-void

    nop

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_23
        :pswitch_1b
        :pswitch_2a
        :pswitch_31
        :pswitch_38
        :pswitch_3f
        :pswitch_46
    .end packed-switch
.end method

.method private a(BLjava/lang/Object;)V
    .registers 8

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->i:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    new-instance v1, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;

    invoke-direct {v1, p1, p2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;-><init>(BLjava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->i:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    invoke-interface {v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->getVRAddr()[Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-interface {v0, v1, p0, v2, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->send(Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageHandler;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->v:Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->v:Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;

    invoke-interface {v0, p1}, Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;->createChildEventBuilder(Ljava/lang/String;)Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;

    move-result-object v0

    const-string/jumbo v1, "ConnectionEstablished"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1f

    :try_start_13
    const-string/jumbo v1, "SessionID"

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->l:[B

    invoke-static {v2}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->FormatUuid([B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;
    :try_end_1f
    .catch Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventAlreadyCommittedException; {:try_start_13 .. :try_end_1f} :catch_23

    :cond_1f
    :goto_1f
    invoke-interface {v0}, Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;->commit()Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;

    :cond_22
    return-void

    :catch_23
    move-exception v1

    goto :goto_1f
.end method

.method private a([B)V
    .registers 6

    const/16 v0, 0x10

    aget-byte v2, p1, v0

    const/16 v0, 0x11

    invoke-static {p1, v0}, Lcom/nuance/nmsp/client/sdk/common/util/ByteConversion;->bytesToShort([BI)S

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_c
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_23

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->h:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSessionListener;

    invoke-interface {v0, v2, v3}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSessionListener;->onBcpEvent(BS)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c

    :cond_23
    return-void
.end method

.method private b([B)V
    .registers 7

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/nuance/nmsp/client/sdk/common/util/ByteConversion;->bytesToInt([BI)I

    move-result v3

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->c:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-nez v0, :cond_e

    :cond_d
    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->c:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/general/NMSPAudioSink;

    if-nez v0, :cond_33

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Could not find the audio sink associated with AID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    goto :goto_d

    :cond_33
    const/4 v1, 0x4

    invoke-static {p1, v1}, Lcom/nuance/nmsp/client/sdk/common/util/ByteConversion;->bytesToInt([BI)I

    move-result v2

    const/16 v1, 0x8

    iget-object v4, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->o:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-static {v4}, Lcom/nuance/nmsp/client/sdk/common/util/Util;->isSpeexCodec(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)Z

    move-result v4

    if-nez v4, :cond_4a

    iget-object v4, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->o:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-static {v4}, Lcom/nuance/nmsp/client/sdk/common/util/Util;->isOpusCodec(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)Z

    move-result v4

    if-eqz v4, :cond_59

    :cond_4a
    :goto_4a
    aget-byte v4, p1, v1

    and-int/lit16 v4, v4, 0x80

    if-lez v4, :cond_55

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_4a

    :cond_55
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x1

    :cond_59
    if-lez v2, :cond_63

    array-length v4, p1

    sub-int/2addr v4, v1

    if-gt v2, v4, :cond_63

    const/4 v4, 0x0

    :try_start_60
    invoke-interface {v0, p1, v1, v2, v4}, Lcom/nuance/nmsp/client/sdk/components/general/NMSPAudioSink;->addAudioBuf([BIIZ)V
    :try_end_63
    .catch Lcom/nuance/nmsp/client/sdk/components/general/TransactionProcessingException; {:try_start_60 .. :try_end_63} :catch_91

    :cond_63
    :goto_63
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->d:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->d:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSessionListener;

    if-nez v0, :cond_9c

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "parseXModeMsgVapPlay:: Could not find the session listener associated with AID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    goto/16 :goto_d

    :catch_91
    move-exception v0

    sget-object v1, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/TransactionProcessingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    goto :goto_63

    :cond_9c
    invoke-interface {v0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSessionListener;->onVapPlayReceived()V

    goto/16 :goto_d
.end method


# virtual methods
.method final a(Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->w:Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;

    return-void
.end method

.method public addAudioSink(ILcom/nuance/nmsp/client/sdk/components/general/NMSPAudioSink;Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSessionListener;)V
    .registers 6

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->c:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->d:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public connect(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)V
    .registers 5

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "connect()"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_10
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->w:Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;

    invoke-virtual {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->createSessionEvent(Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;)V

    const-string/jumbo v0, "Connect"

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->a(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->n:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    iput-object p2, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->o:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->a(BLjava/lang/Object;)V

    return-void
.end method

.method public copConnected()V
    .registers 1

    return-void
.end method

.method public createSessionEvent(Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;)V
    .registers 4

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "Creating new SDK calllog tree"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->w:Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;

    if-nez v0, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->w:Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;->getRootSessionEvent()Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;

    move-result-object v0

    if-eqz v0, :cond_c

    const-string/jumbo v1, "NMSPSession"

    invoke-interface {v0, v1}, Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;->createChildEventBuilder(Ljava/lang/String;)Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;->commit()Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->v:Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->e:Lcom/nuance/nmsp/client/sdk/components/core/XMode;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->v:Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->createSessionEvent(Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;)V

    goto :goto_c
.end method

.method public disconnect()V
    .registers 3

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "disconnect"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_10
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->a(BLjava/lang/Object;)V

    return-void
.end method

.method public disconnectAndShutdown()V
    .registers 3

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "disconnectAndShutdown"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_10
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->a(BLjava/lang/Object;)V

    return-void
.end method

.method public freeResource(BILcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSessionListener;)V
    .registers 8

    const/4 v3, 0x4

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "freeResource, TID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", disconnect timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->h:Ljava/util/Vector;

    invoke-virtual {v0, p3}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, p1}, Ljava/lang/Byte;-><init>(B)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->l:[B

    if-eqz v1, :cond_49

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->k:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-direct {p0, v3, v0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->a(BLjava/lang/Object;)V

    :goto_48
    return-void

    :cond_49
    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->k:Ljava/util/Vector;

    new-instance v2, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;

    invoke-direct {v2, v3, v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;-><init>(BLjava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_48
.end method

.method public getInputCodec()Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;
    .registers 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->n:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    return-object v0
.end method

.method public getMsgQueue()Ljava/util/Vector;
    .registers 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->k:Ljava/util/Vector;

    return-object v0
.end method

.method public getMsgSystem()Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;
    .registers 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->i:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    return-object v0
.end method

.method public declared-synchronized getNewAudioId()I
    .registers 4

    monitor-enter p0

    :try_start_1
    sget v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->p:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->p:I

    sget v1, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->p:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_10

    const/4 v1, 0x1

    sput v1, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->p:I
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    :cond_10
    monitor-exit p0

    return v0

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getResourceId()J
    .registers 9

    const-wide/16 v6, 0x1

    iget-wide v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->t:J

    add-long v2, v0, v6

    iput-wide v2, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->t:J

    iget-wide v2, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->t:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v2, v2, v4

    if-nez v2, :cond_12

    iput-wide v6, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->t:J

    :cond_12
    return-wide v0
.end method

.method public getSessionEvent()Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;
    .registers 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->v:Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;

    return-object v0
.end method

.method public getSessionId()[B
    .registers 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->l:[B

    return-object v0
.end method

.method public getTransactionId()B
    .registers 4

    iget-byte v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->u:B

    add-int/lit8 v1, v0, 0x1

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->u:B

    iget-byte v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->u:B

    const/16 v2, -0x80

    if-ne v1, v2, :cond_10

    const/4 v1, 0x1

    iput-byte v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->u:B

    :cond_10
    return v0
.end method

.method public getXmode()Lcom/nuance/nmsp/client/sdk/components/core/XMode;
    .registers 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->e:Lcom/nuance/nmsp/client/sdk/components/core/XMode;

    return-object v0
.end method

.method public handleDisconnect()V
    .registers 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->e:Lcom/nuance/nmsp/client/sdk/components/core/XMode;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->disconnect()V

    return-void
.end method

.method public handleDisconnectAndShutdown()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->r:Z

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->e:Lcom/nuance/nmsp/client/sdk/components/core/XMode;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->disconnect()V

    return-void
.end method

.method public handleMessage(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 16

    check-cast p1, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;

    iget-byte v0, p1, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;->command:B

    packed-switch v0, :pswitch_data_18c

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "Unknown command"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    :cond_f
    :goto_f
    return-void

    :pswitch_10
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->e:Lcom/nuance/nmsp/client/sdk/components/core/XMode;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->n:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->getValue()S

    move-result v1

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->o:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-virtual {v2}, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->getValue()S

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->connect(SS)V

    goto :goto_f

    :pswitch_22
    invoke-virtual {p0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->handleDisconnect()V

    goto :goto_f

    :pswitch_26
    invoke-virtual {p0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->handleDisconnectAndShutdown()V

    goto :goto_f

    :pswitch_2a
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->l:[B

    if-eqz v0, :cond_f

    iget-object v0, p1, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;->data:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x5

    new-array v2, v2, [B

    const/4 v3, 0x0

    aput-byte v1, v2, v3

    const/4 v1, 0x1

    invoke-static {v0, v2, v1}, Lcom/nuance/nmsp/client/sdk/common/util/ByteConversion;->intToBytes(I[BI)V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->l:[B

    invoke-static {v2, v0}, Lcom/nuance/nmsp/client/sdk/common/protocols/ProtocolBuilder;->appendBCPSessionUUID([B[B)[B

    move-result-object v0

    const/4 v1, 0x2

    const/16 v2, 0x22

    const/16 v3, 0xa29

    invoke-static {v1, v2, v3, v0}, Lcom/nuance/nmsp/client/sdk/common/protocols/ProtocolBuilder;->buildXModeBuf(BBS[B)[B

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->e:Lcom/nuance/nmsp/client/sdk/components/core/XMode;

    const/4 v2, 0x3

    const-string/jumbo v3, "SEND_BCP_FREE_RESOURCE"

    invoke-virtual {v1, v0, v2, v3}, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->sendXModeMsg([BILjava/lang/Object;)V

    goto :goto_f

    :pswitch_67
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->l:[B

    if-eqz v0, :cond_f

    iget-object v0, p1, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;->data:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->e:Lcom/nuance/nmsp/client/sdk/components/core/XMode;

    invoke-virtual {v1, v0}, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->startStreaming(I)V

    goto :goto_f

    :pswitch_79
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->l:[B

    if-eqz v0, :cond_f

    iget-object v0, p1, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;->data:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, [B

    const/4 v2, 0x1

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_91
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_b0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->h:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSessionListener;

    invoke-interface {v0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSessionListener;->onVapSending()V

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v4, "onVapSending is called to reset command time out task"

    invoke-virtual {v0, v4}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_91

    :cond_b0
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->e:Lcom/nuance/nmsp/client/sdk/components/core/XMode;

    invoke-virtual {v0, v1, v3}, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->sendVapRecordMsg([BI)V

    goto/16 :goto_f

    :pswitch_b7
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->l:[B

    if-eqz v0, :cond_f

    iget-object v0, p1, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;->data:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->e:Lcom/nuance/nmsp/client/sdk/components/core/XMode;

    invoke-virtual {v1, v0}, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->sendVapRecordEnd(I)V

    goto/16 :goto_f

    :pswitch_ca
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->l:[B

    if-eqz v0, :cond_f

    iget-object v0, p1, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;->data:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, [Ljava/lang/Object;

    const/4 v0, 0x0

    aget-object v0, v4, v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v8

    const/4 v0, 0x1

    aget-object v0, v4, v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v4, v0

    move-object v6, v0

    check-cast v6, [B

    const/4 v0, 0x3

    aget-object v0, v4, v0

    move-object v7, v0

    check-cast v7, [B

    const/4 v0, 0x4

    aget-object v0, v4, v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    const/4 v0, 0x5

    aget-object v0, v4, v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v0, 0x6

    aget-object v0, v4, v0

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSessionListener;

    const/4 v9, 0x7

    aget-object v4, v4, v9

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    iget-object v4, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->b:Ljava/util/Hashtable;

    new-instance v10, Ljava/lang/Long;

    invoke-direct {v10, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v4, v10, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    array-length v4, v6

    add-int/lit8 v4, v4, 0x5

    const/16 v10, 0xa19

    if-ne v8, v10, :cond_121

    add-int/lit8 v4, v4, 0x4

    :cond_121
    new-array v10, v4, [B

    const/4 v4, 0x0

    aput-byte v1, v10, v4

    const/4 v4, 0x1

    const/16 v11, 0xa19

    if-ne v8, v11, :cond_131

    long-to-int v4, v2

    const/4 v11, 0x1

    invoke-static {v4, v10, v11}, Lcom/nuance/nmsp/client/sdk/common/util/ByteConversion;->intToBytes(I[BI)V

    const/4 v4, 0x5

    :cond_131
    array-length v11, v6

    invoke-static {v11, v10, v4}, Lcom/nuance/nmsp/client/sdk/common/util/ByteConversion;->intToBytes(I[BI)V

    add-int/lit8 v4, v4, 0x4

    const/4 v11, 0x0

    array-length v12, v6

    invoke-static {v6, v11, v10, v4, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->l:[B

    if-eqz v4, :cond_178

    iget-object v4, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->l:[B

    :goto_142
    invoke-static {v10, v4}, Lcom/nuance/nmsp/client/sdk/common/protocols/ProtocolBuilder;->appendBCPSessionUUID([B[B)[B

    move-result-object v4

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v10, 0x0

    array-length v11, v4

    invoke-virtual {v6, v4, v10, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    if-eqz v7, :cond_157

    const/4 v4, 0x0

    array-length v10, v7

    invoke-virtual {v6, v7, v4, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_157
    const/4 v4, 0x2

    const/16 v7, 0x22

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-static {v4, v7, v8, v6}, Lcom/nuance/nmsp/client/sdk/common/protocols/ProtocolBuilder;->buildXModeBuf(BBS[B)[B

    move-result-object v4

    iget-object v6, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->e:Lcom/nuance/nmsp/client/sdk/components/core/XMode;

    const/4 v7, 0x3

    invoke-virtual {v6, v4, v7, v5}, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->sendXModeMsg([BILjava/lang/Object;)V

    if-eqz v9, :cond_f

    const/16 v4, 0xa15

    if-ne v8, v4, :cond_17b

    if-eqz v0, :cond_f

    const/16 v4, 0xc8

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSessionListener;->onBcpSetParamsComplete(BJS[B)V

    goto/16 :goto_f

    :cond_178
    sget-object v4, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->m:[B

    goto :goto_142

    :cond_17b
    const/16 v1, 0xa30

    if-ne v8, v1, :cond_f

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->h:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    invoke-interface {v0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSessionListener;->onBcpFreeResourceId()V

    goto/16 :goto_f

    nop

    :pswitch_data_18c
    .packed-switch 0x1
        :pswitch_10
        :pswitch_22
        :pswitch_26
        :pswitch_2a
        :pswitch_67
        :pswitch_79
        :pswitch_b7
        :pswitch_ca
    .end packed-switch
.end method

.method public isNetworkHealthy()Z
    .registers 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->e:Lcom/nuance/nmsp/client/sdk/components/core/XMode;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->isNetworkHealthy()Z

    move-result v0

    return v0
.end method

.method public postBcpMessage(SLjava/lang/String;[B[BBJLcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSessionListener;Z)V
    .registers 14

    const/16 v3, 0x8

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_35

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "postBcpMessage, BCP: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", TID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", RID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_35
    new-array v0, v3, [Ljava/lang/Object;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/Short;

    invoke-direct {v2, p1}, Ljava/lang/Short;-><init>(S)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const/4 v1, 0x4

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, p5}, Ljava/lang/Byte;-><init>(B)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, p6, p7}, Ljava/lang/Long;-><init>(J)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object p8, v0, v1

    const/4 v1, 0x7

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, p9}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->l:[B

    if-eqz v1, :cond_73

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->k:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_73

    invoke-direct {p0, v3, v0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->a(BLjava/lang/Object;)V

    :goto_72
    return-void

    :cond_73
    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->k:Ljava/util/Vector;

    new-instance v2, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;

    invoke-direct {v2, v3, v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;-><init>(BLjava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_72
.end method

.method public removeSessionListener(Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSessionListener;)V
    .registers 3

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->h:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    return-void
.end method

.method public setDefaultReqId(J)V
    .registers 4

    iput-wide p1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->q:J

    return-void
.end method

.method public setResource(Lcom/nuance/nmsp/client/sdk/components/resource/common/Resource;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->s:Lcom/nuance/nmsp/client/sdk/components/resource/common/Resource;

    return-void
.end method

.method public setSessionListener(Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSessionListener;)V
    .registers 3

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->h:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->h:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_d
    return-void
.end method

.method public socketClosed(SS)V
    .registers 7

    const/16 v3, 0x9

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1f

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "socketClosed, reason: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_1f
    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_42

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "socketClosed() sessionListeners.size():"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->h:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_42
    const/4 v0, 0x0

    move v1, v0

    :goto_44
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_5b

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->h:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSessionListener;

    invoke-interface {v0, p1}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSessionListener;->onSessionDisconnected(S)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_44

    :cond_5b
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->k:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_68

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->k:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    :cond_68
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    const/4 v0, 0x4

    if-eq p1, v0, :cond_73

    const/4 v0, 0x5

    if-ne p1, v0, :cond_8f

    :cond_73
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->j:Lcom/nuance/nmsp/client/sdk/components/resource/common/ManagerListener;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->s:Lcom/nuance/nmsp/client/sdk/components/resource/common/Resource;

    invoke-interface {v0, v1, v3}, Lcom/nuance/nmsp/client/sdk/components/resource/common/ManagerListener;->connectionFailed(Lcom/nuance/nmsp/client/sdk/components/resource/common/Resource;S)V

    :cond_7a
    :goto_7a
    const/4 v0, 0x1

    if-ne p1, v0, :cond_8b

    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->r:Z

    if-eqz v0, :cond_8b

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->i:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    invoke-interface {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->stop()V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->j:Lcom/nuance/nmsp/client/sdk/components/resource/common/ManagerListener;

    invoke-interface {v0}, Lcom/nuance/nmsp/client/sdk/components/resource/common/ManagerListener;->shutdownCompleted()V

    :cond_8b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->l:[B

    return-void

    :cond_8f
    const/4 v0, 0x7

    if-ne p1, v0, :cond_9a

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->j:Lcom/nuance/nmsp/client/sdk/components/resource/common/ManagerListener;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->s:Lcom/nuance/nmsp/client/sdk/components/resource/common/Resource;

    invoke-interface {v0, v1, p2}, Lcom/nuance/nmsp/client/sdk/components/resource/common/ManagerListener;->connectionFailed(Lcom/nuance/nmsp/client/sdk/components/resource/common/Resource;S)V

    goto :goto_7a

    :cond_9a
    const/16 v0, 0x8

    if-ne p1, v0, :cond_aa

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->l:[B

    if-nez v0, :cond_aa

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->j:Lcom/nuance/nmsp/client/sdk/components/resource/common/ManagerListener;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->s:Lcom/nuance/nmsp/client/sdk/components/resource/common/Resource;

    invoke-interface {v0, v1, v3}, Lcom/nuance/nmsp/client/sdk/components/resource/common/ManagerListener;->connectionFailed(Lcom/nuance/nmsp/client/sdk/components/resource/common/Resource;S)V

    goto :goto_7a

    :cond_aa
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->l:[B

    if-eqz v0, :cond_7a

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->j:Lcom/nuance/nmsp/client/sdk/components/resource/common/ManagerListener;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->s:Lcom/nuance/nmsp/client/sdk/components/resource/common/Resource;

    invoke-interface {v0, v1, p2}, Lcom/nuance/nmsp/client/sdk/components/resource/common/ManagerListener;->disconnected(Lcom/nuance/nmsp/client/sdk/components/resource/common/Resource;S)V

    goto :goto_7a
.end method

.method public socketOpened()V
    .registers 1

    return-void
.end method

.method public vapRecord([BI)V
    .registers 7

    const/4 v3, 0x6

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1e

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "vapRecord, AID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_1e
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->l:[B

    if-eqz v1, :cond_3c

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->k:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-direct {p0, v3, v0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->a(BLjava/lang/Object;)V

    :goto_3b
    return-void

    :cond_3c
    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->k:Ljava/util/Vector;

    new-instance v2, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;

    invoke-direct {v2, v3, v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;-><init>(BLjava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_3b
.end method

.method public vapRecordBegin(I)V
    .registers 6

    const/4 v3, 0x5

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1e

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "vapRecordBegin, AID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_1e
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->l:[B

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->k:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-direct {p0, v3, v0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->a(BLjava/lang/Object;)V

    :goto_32
    return-void

    :cond_33
    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->k:Ljava/util/Vector;

    new-instance v2, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;

    invoke-direct {v2, v3, v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;-><init>(BLjava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_32
.end method

.method public vapRecordEnd(I)V
    .registers 6

    const/4 v3, 0x7

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1e

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "vapRecordEnd, AID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_1e
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->l:[B

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->k:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-direct {p0, v3, v0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->a(BLjava/lang/Object;)V

    :goto_32
    return-void

    :cond_33
    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->k:Ljava/util/Vector;

    new-instance v2, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;

    invoke-direct {v2, v3, v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;-><init>(BLjava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_32
.end method

.method public xmodeMsgCallback(Lcom/nuance/nmsp/client/sdk/common/protocols/XModeMsgHeader;[B)V
    .registers 13

    const/16 v8, 0x17

    const/16 v7, 0x11

    const/16 v6, 0x15

    const/16 v4, 0x10

    const/4 v0, 0x0

    sget-object v1, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_35

    sget-object v1, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "xmodeMsgCallback, protocol: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v3, p1, Lcom/nuance/nmsp/client/sdk/common/protocols/XModeMsgHeader;->protocol:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-short v3, p1, Lcom/nuance/nmsp/client/sdk/common/protocols/XModeMsgHeader;->cmd:S

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_35
    iget-byte v1, p1, Lcom/nuance/nmsp/client/sdk/common/protocols/XModeMsgHeader;->protocol:B

    packed-switch v1, :pswitch_data_2ca

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "Unknown Xmode protocol"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    :cond_42
    :goto_42
    :sswitch_42
    return-void

    :pswitch_43
    iget-short v1, p1, Lcom/nuance/nmsp/client/sdk/common/protocols/XModeMsgHeader;->cmd:S

    sparse-switch v1, :sswitch_data_2d4

    goto :goto_42

    :sswitch_49
    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->e:Lcom/nuance/nmsp/client/sdk/components/core/XMode;

    iget-object v1, v1, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->sessionId:[B

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->l:[B

    sget-object v1, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_7f

    sget-object v1, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "connected("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->l:[B

    invoke-static {v3}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->FormatUuid([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") called on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->j:Lcom/nuance/nmsp/client/sdk/components/resource/common/ManagerListener;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_7f
    const-string/jumbo v1, "ConnectionEstablished"

    invoke-direct {p0, v1}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->j:Lcom/nuance/nmsp/client/sdk/components/resource/common/ManagerListener;

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->l:[B

    invoke-static {v2}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->FormatUuid([B)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->s:Lcom/nuance/nmsp/client/sdk/components/resource/common/Resource;

    invoke-interface {v1, v2, v3}, Lcom/nuance/nmsp/client/sdk/components/resource/common/ManagerListener;->connected(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/resource/common/Resource;)V

    move v1, v0

    :goto_93
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_ac

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->h:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSessionListener;

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->l:[B

    invoke-interface {v0, v2}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSessionListener;->onSessionConnected([B)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_93

    :cond_ac
    invoke-direct {p0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->a()V

    goto :goto_42

    :pswitch_b0
    iget-short v1, p1, Lcom/nuance/nmsp/client/sdk/common/protocols/XModeMsgHeader;->cmd:S

    sparse-switch v1, :sswitch_data_2e2

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "Unknown BCP command"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    goto :goto_42

    :sswitch_be
    const/4 v5, 0x0

    aget-byte v1, p2, v4

    invoke-static {p2, v7}, Lcom/nuance/nmsp/client/sdk/common/util/ByteConversion;->bytesToInt([BI)I

    move-result v2

    int-to-long v2, v2

    invoke-static {p2, v6}, Lcom/nuance/nmsp/client/sdk/common/util/ByteConversion;->bytesToShort([BI)S

    move-result v4

    invoke-static {p2, v8}, Lcom/nuance/nmsp/client/sdk/common/util/ByteConversion;->bytesToInt([BI)I

    move-result v6

    if-lez v6, :cond_dc

    array-length v7, p2

    add-int/lit8 v7, v7, -0x1b

    if-gt v6, v7, :cond_dc

    new-array v5, v6, [B

    const/16 v7, 0x1b

    invoke-static {p2, v7, v5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_dc
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->b:Ljava/util/Hashtable;

    new-instance v6, Ljava/lang/Long;

    invoke-direct {v6, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v6}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSessionListener;

    if-eqz v0, :cond_42

    invoke-interface/range {v0 .. v5}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSessionListener;->onBcpRecognitionComplete(BJS[B)V

    goto/16 :goto_42

    :sswitch_f0
    const/4 v5, 0x0

    aget-byte v1, p2, v4

    invoke-static {p2, v7}, Lcom/nuance/nmsp/client/sdk/common/util/ByteConversion;->bytesToInt([BI)I

    move-result v2

    int-to-long v2, v2

    invoke-static {p2, v6}, Lcom/nuance/nmsp/client/sdk/common/util/ByteConversion;->bytesToShort([BI)S

    move-result v4

    invoke-static {p2, v8}, Lcom/nuance/nmsp/client/sdk/common/util/ByteConversion;->bytesToInt([BI)I

    move-result v6

    if-lez v6, :cond_10e

    array-length v7, p2

    add-int/lit8 v7, v7, -0x1b

    if-gt v6, v7, :cond_10e

    new-array v5, v6, [B

    const/16 v7, 0x1b

    invoke-static {p2, v7, v5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_10e
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->b:Ljava/util/Hashtable;

    new-instance v6, Ljava/lang/Long;

    invoke-direct {v6, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSessionListener;

    if-eqz v0, :cond_42

    invoke-interface/range {v0 .. v5}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSessionListener;->onBcpRecognitionIntermediateResults(BJS[B)V

    goto/16 :goto_42

    :sswitch_122
    const/4 v5, 0x0

    aget-byte v1, p2, v4

    invoke-static {p2, v7}, Lcom/nuance/nmsp/client/sdk/common/util/ByteConversion;->bytesToInt([BI)I

    move-result v2

    invoke-static {p2, v6}, Lcom/nuance/nmsp/client/sdk/common/util/ByteConversion;->bytesToShort([BI)S

    move-result v4

    invoke-static {p2, v8}, Lcom/nuance/nmsp/client/sdk/common/util/ByteConversion;->bytesToInt([BI)I

    move-result v3

    if-lez v3, :cond_13f

    array-length v6, p2

    add-int/lit8 v6, v6, -0x1b

    if-gt v3, v6, :cond_13f

    new-array v5, v3, [B

    const/16 v6, 0x1b

    invoke-static {p2, v6, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_13f
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->b:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Long;

    int-to-long v6, v2

    invoke-direct {v3, v6, v7}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSessionListener;

    if-eqz v0, :cond_42

    int-to-long v2, v2

    invoke-interface/range {v0 .. v5}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSessionListener;->onBcpGetParamsComplete(BJS[B)V

    goto/16 :goto_42

    :sswitch_155
    const/4 v5, 0x0

    aget-byte v1, p2, v4

    invoke-static {p2, v7}, Lcom/nuance/nmsp/client/sdk/common/util/ByteConversion;->bytesToInt([BI)I

    move-result v2

    invoke-static {p2, v6}, Lcom/nuance/nmsp/client/sdk/common/util/ByteConversion;->bytesToShort([BI)S

    move-result v4

    invoke-static {p2, v8}, Lcom/nuance/nmsp/client/sdk/common/util/ByteConversion;->bytesToInt([BI)I

    move-result v3

    if-lez v3, :cond_172

    array-length v6, p2

    add-int/lit8 v6, v6, -0x1b

    if-gt v3, v6, :cond_172

    new-array v5, v3, [B

    const/16 v6, 0x1b

    invoke-static {p2, v6, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_172
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->b:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Long;

    int-to-long v6, v2

    invoke-direct {v3, v6, v7}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSessionListener;

    if-eqz v0, :cond_42

    int-to-long v2, v2

    invoke-interface/range {v0 .. v5}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSessionListener;->onBcpSetParamsComplete(BJS[B)V

    goto/16 :goto_42

    :sswitch_188
    aget-byte v1, p2, v4

    invoke-static {p2, v7}, Lcom/nuance/nmsp/client/sdk/common/util/ByteConversion;->bytesToInt([BI)I

    move-result v0

    int-to-long v2, v0

    invoke-static {p2, v6}, Lcom/nuance/nmsp/client/sdk/common/util/ByteConversion;->bytesToInt([BI)I

    move-result v0

    int-to-long v4, v0

    const/16 v0, 0x19

    invoke-static {p2, v0}, Lcom/nuance/nmsp/client/sdk/common/util/ByteConversion;->bytesToShort([BI)S

    move-result v6

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->b:Ljava/util/Hashtable;

    new-instance v7, Ljava/lang/Long;

    invoke-direct {v7, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v7}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSessionListener;

    if-eqz v0, :cond_42

    invoke-interface/range {v0 .. v6}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSessionListener;->onBcpGenerateAudioComplete(BJJS)V

    goto/16 :goto_42

    :sswitch_1ae
    invoke-direct {p0, p2}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->a([B)V

    goto/16 :goto_42

    :sswitch_1b3
    aget-byte v1, p2, v4

    invoke-static {p2, v7}, Lcom/nuance/nmsp/client/sdk/common/util/ByteConversion;->bytesToInt([BI)I

    move-result v7

    invoke-static {p2, v6}, Lcom/nuance/nmsp/client/sdk/common/util/ByteConversion;->bytesToShort([BI)S

    move-result v4

    invoke-static {p2, v8}, Lcom/nuance/nmsp/client/sdk/common/util/ByteConversion;->bytesToShort([BI)S

    move-result v5

    const/16 v0, 0x19

    invoke-static {p2, v0}, Lcom/nuance/nmsp/client/sdk/common/util/ByteConversion;->bytesToShort([BI)S

    move-result v6

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->b:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Long;

    int-to-long v8, v7

    invoke-direct {v2, v8, v9}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSessionListener;

    if-eqz v0, :cond_42

    int-to-long v2, v7

    invoke-interface/range {v0 .. v6}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSessionListener;->onBcpResponse(BJSSS)V

    const/16 v0, 0xc8

    if-eq v4, v0, :cond_42

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->b:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    int-to-long v2, v7

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_42

    :sswitch_1ec
    aget-byte v1, p2, v4

    invoke-static {p2, v6}, Lcom/nuance/nmsp/client/sdk/common/util/ByteConversion;->bytesToInt([BI)I

    move-result v2

    if-lez v2, :cond_42

    array-length v3, p2

    add-int/lit8 v3, v3, -0x19

    if-gt v2, v3, :cond_42

    new-array v3, v2, [B

    const/16 v4, 0x19

    invoke-static {p2, v4, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->b:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Long;

    iget-wide v4, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->q:J

    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSessionListener;

    if-eqz v0, :cond_42

    iget-wide v4, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->q:J

    invoke-interface {v0, v1, v4, v5, v3}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSessionListener;->onBcpData(BJ[B)V

    goto/16 :goto_42

    :pswitch_218
    iget-short v1, p1, Lcom/nuance/nmsp/client/sdk/common/protocols/XModeMsgHeader;->cmd:S

    sparse-switch v1, :sswitch_data_308

    goto/16 :goto_42

    :sswitch_21f
    invoke-direct {p0, p2}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->b([B)V

    goto/16 :goto_42

    :sswitch_224
    invoke-static {p2, v0}, Lcom/nuance/nmsp/client/sdk/common/util/ByteConversion;->bytesToInt([BI)I

    move-result v1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->d:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->d:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSessionListener;

    if-nez v0, :cond_256

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "parseVapPlayBegin:: Could not find the session listener associated with AID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    goto/16 :goto_42

    :cond_256
    invoke-interface {v0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSessionListener;->onVapPlayBeginReceived()V

    goto/16 :goto_42

    :sswitch_25b
    invoke-static {p2, v0}, Lcom/nuance/nmsp/client/sdk/common/util/ByteConversion;->bytesToInt([BI)I

    move-result v1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->c:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->c:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/general/NMSPAudioSink;

    if-nez v0, :cond_28d

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Could not find the audio sink associated with AID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    goto/16 :goto_42

    :cond_28d
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_291
    invoke-interface {v0, v2, v3, v4, v5}, Lcom/nuance/nmsp/client/sdk/components/general/NMSPAudioSink;->addAudioBuf([BIIZ)V
    :try_end_294
    .catch Lcom/nuance/nmsp/client/sdk/components/general/TransactionProcessingException; {:try_start_291 .. :try_end_294} :catch_2ba

    :goto_294
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->d:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSessionListener;

    if-nez v0, :cond_2c5

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "parseXModeMsgVapPlayEnd:: Could not find the session listener associated with AID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    goto/16 :goto_42

    :catch_2ba
    move-exception v0

    sget-object v2, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/TransactionProcessingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    goto :goto_294

    :cond_2c5
    invoke-interface {v0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSessionListener;->onVapPlayEndReceived()V

    goto/16 :goto_42

    :pswitch_data_2ca
    .packed-switch 0x1
        :pswitch_218
        :pswitch_b0
        :pswitch_43
    .end packed-switch

    :sswitch_data_2d4
    .sparse-switch
        0x101 -> :sswitch_49
        0x200 -> :sswitch_42
        0x300 -> :sswitch_42
    .end sparse-switch

    :sswitch_data_2e2
    .sparse-switch
        0xa10 -> :sswitch_1b3
        0xa11 -> :sswitch_188
        0xa12 -> :sswitch_42
        0xa13 -> :sswitch_be
        0xa14 -> :sswitch_f0
        0xa16 -> :sswitch_155
        0xa18 -> :sswitch_122
        0xa19 -> :sswitch_1ec
        0xa28 -> :sswitch_1ae
    .end sparse-switch

    :sswitch_data_308
    .sparse-switch
        0x200 -> :sswitch_21f
        0x210 -> :sswitch_224
        0x400 -> :sswitch_25b
    .end sparse-switch
.end method

.method public xmodeMsgNotSent(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    return-void
.end method

.method public xmodeMsgSent(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    return-void
.end method
