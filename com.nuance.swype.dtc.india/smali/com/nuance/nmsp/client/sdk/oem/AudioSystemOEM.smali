.class public Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem;
.implements Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;,
        Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;,
        Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$CodecType;,
        Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$AudioSystemException;
    }
.end annotation


# static fields
.field private static final L:Ljava/lang/Integer;

.field private static final M:Ljava/lang/Integer;

.field private static final N:Ljava/lang/Integer;

.field public static bufferOffset:I

.field public static isSpeexDecodeInit:Z

.field public static maxOffset:I

.field public static speexDecodeLock:Ljava/lang/Object;

.field public static speexEncodeLock:Ljava/lang/Object;

.field private static x:Ljava/lang/Object;

.field private static y:Ljava/lang/Object;

.field private static z:Ljava/lang/Object;


# instance fields
.field private A:Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM;

.field private B:[S

.field private C:[B

.field private D:I

.field private E:I

.field private F:I

.field private G:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$CodecType;

.field private H:Z

.field private I:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

.field private J:Z

.field private K:Z

.field private O:Landroid/content/Context;

.field private P:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;

.field private Q:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

.field private a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;

.field private w:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->x:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->y:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->z:Ljava/lang/Object;

    const-string/jumbo v0, "nmsp_speex"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    sput-boolean v1, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->isSpeexDecodeInit:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->speexEncodeLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->speexDecodeLock:Ljava/lang/Object;

    sput v1, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->bufferOffset:I

    sput v1, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->maxOffset:I

    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->L:Ljava/lang/Integer;

    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->M:Ljava/lang/Integer;

    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->N:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;Ljava/util/Vector;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory;->getLog(Ljava/lang/Class;)Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const/16 v1, 0x28

    iput v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->u:I

    iput-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->A:Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM;

    iput-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->H:Z

    iput-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->J:Z

    iput-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->K:Z

    iput-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->O:Landroid/content/Context;

    iput-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->P:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;

    iput-object p2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->Q:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->I:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    new-instance v1, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM;

    invoke-direct {v1}, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM;-><init>()V

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->A:Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->A:Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM;

    invoke-virtual {v1, p3}, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM;->initialize(Ljava/util/Vector;)V

    if-eqz p3, :cond_8

    move v1, v0

    :goto_0
    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_8

    invoke-virtual {p3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getType()Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    move-result-object v3

    sget-object v4, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->SDK:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    if-ne v3, v4, :cond_1

    const-string/jumbo v3, "USE_ENERGY_LEVEL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getValue()[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    const-string/jumbo v0, "TRUE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v2, "Use energy level is activated."

    invoke-virtual {v0, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_0
    iput-boolean v5, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->H:Z

    :cond_1
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "NMSP_DEFINES_RECORDER_CONTINUES_ON_ENDPOINTER_AND_TIMER_STOPPING"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getValue()[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    const-string/jumbo v0, "TRUE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v2, "_continuesOnEndPointerAndTimerStopping is activated."

    invoke-virtual {v0, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_3
    iput-boolean v5, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->J:Z

    goto :goto_1

    :cond_4
    const-string/jumbo v3, "NMSP_DEFINES_CAPTURING_CONTINUES_ON_ENDPOINTER"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getValue()[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    const-string/jumbo v0, "TRUE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v2, "_capturingContinuesOnEndPointer is activated."

    invoke-virtual {v0, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_5
    iput-boolean v5, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->K:Z

    goto :goto_1

    :cond_6
    const-string/jumbo v3, "Android_Context"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getValueRaw()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->O:Landroid/content/Context;

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "NMSP_DEFINES_ANDROID_CONTEXT is passed in as"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->O:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_7
    const-string/jumbo v3, "Audio_Packet_Duration"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getValue()[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->u:I

    goto/16 :goto_1

    :cond_8
    invoke-direct {p0, p2}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)V

    return-void
.end method

.method static synthetic A(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->H:Z

    return v0
.end method

.method static synthetic B(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->J:Z

    return v0
.end method

.method static synthetic C(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I
    .locals 1

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->u:I

    return v0
.end method

.method static synthetic a(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->P:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->y:Ljava/lang/Object;

    return-object v0
.end method

.method private a(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)V
    .locals 7

    const/4 v6, -0x2

    const/16 v1, 0x3e80

    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, -0x1

    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->PCM_16_8K:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    if-eq p1, v0, :cond_6

    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->PCM_16_11K:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$CodecType;->PCM:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$CodecType;

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->G:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$CodecType;

    const/16 v0, 0x2af8

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->F:I

    iput v3, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->D:I

    iput v3, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->E:I

    :goto_0
    iput v5, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->c:I

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->F:I

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->d:I

    const/16 v0, 0x2ee

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->l:I

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->l:I

    iget v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->d:I

    mul-int/2addr v0, v1

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->m:I

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->m:I

    shl-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->n:I

    const/16 v0, 0x12c

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->e:I

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->d:I

    iget v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->e:I

    mul-int/2addr v0, v1

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->f:I

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->f:I

    shl-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->g:I

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->g:I

    mul-int/lit8 v0, v0, 0x5

    iget v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->d:I

    invoke-static {v1, v4, v4}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v1

    if-eq v1, v6, :cond_7

    if-eq v1, v3, :cond_7

    if-le v1, v0, :cond_7

    iput v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->i:I

    :goto_1
    iget v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->i:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->h:I

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->j:I

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->d:I

    iget v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->j:I

    mul-int/2addr v0, v1

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->k:I

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->F:I

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->p:I

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->p:I

    iget v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->u:I

    mul-int/2addr v0, v1

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->q:I

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->q:I

    shl-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->r:I

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->r:I

    mul-int/lit8 v0, v0, 0x3

    iget v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->p:I

    invoke-static {v1, v4, v4}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v1

    if-eq v1, v6, :cond_8

    if-eq v1, v3, :cond_8

    if-le v1, v0, :cond_8

    iput v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->s:I

    :goto_2
    iget v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->r:I

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->t:I

    return-void

    :cond_0
    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->PCM_16_16K:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$CodecType;->PCM:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$CodecType;

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->G:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$CodecType;

    iput v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->F:I

    iput v3, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->D:I

    iput v3, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->E:I

    goto/16 :goto_0

    :cond_1
    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->PCM_16_32K:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    if-ne p1, v0, :cond_2

    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$CodecType;->PCM:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$CodecType;

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->G:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$CodecType;

    const/16 v0, 0x7d00

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->F:I

    iput v3, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->D:I

    iput v3, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->E:I

    goto/16 :goto_0

    :cond_2
    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->SPEEX_8K:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    if-ne p1, v0, :cond_3

    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$CodecType;->SPEEX:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$CodecType;

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->G:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$CodecType;

    const/16 v0, 0x1f40

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->F:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->E:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->D:I

    goto/16 :goto_0

    :cond_3
    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->SPEEX_16K:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    if-ne p1, v0, :cond_4

    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$CodecType;->SPEEX:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$CodecType;

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->G:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$CodecType;

    iput v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->F:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->E:I

    iput v5, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->D:I

    goto/16 :goto_0

    :cond_4
    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->SPEEX_11K:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    if-ne p1, v0, :cond_5

    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$CodecType;->SPEEX:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$CodecType;

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->G:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$CodecType;

    iput v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->F:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->E:I

    iput v5, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->D:I

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Codec "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not handled, using PCM_16_8K by default."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    :cond_6
    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$CodecType;->PCM:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$CodecType;

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->G:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$CodecType;

    const/16 v0, 0x1f40

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->F:I

    iput v3, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->D:I

    iput v3, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->E:I

    goto/16 :goto_0

    :cond_7
    iput v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->i:I

    goto/16 :goto_1

    :cond_8
    iput v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->s:I

    goto/16 :goto_2
.end method

.method static synthetic a(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->C:[B

    return-object p1
.end method

.method static synthetic a(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;[S)[S
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->B:[S

    return-object p1
.end method

.method static synthetic b()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->z:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->g()V

    return-void
.end method

.method static synthetic c(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I
    .locals 1

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->g:I

    return v0
.end method

.method static synthetic c()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->x:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic d(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I
    .locals 1

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->k:I

    return v0
.end method

.method static synthetic d()Ljava/lang/Integer;
    .locals 1

    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->L:Ljava/lang/Integer;

    return-object v0
.end method

.method public static native decodeCleanupSpeex()V
.end method

.method public static native decodeInitSpeex(III)I
.end method

.method public static native decodeSpeex([BI[SI)I
.end method

.method static synthetic e(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I
    .locals 1

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->b:I

    return v0
.end method

.method static synthetic e()Ljava/lang/Integer;
    .locals 1

    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->M:Ljava/lang/Integer;

    return-object v0
.end method

.method public static native encodeCleanupSpeex()V
.end method

.method public static native encodeInitSpeex(IIIII)I
.end method

.method public static native encodeSpeex([S[BI)I
.end method

.method static synthetic f(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I
    .locals 1

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->d:I

    return v0
.end method

.method static synthetic f()Ljava/lang/Integer;
    .locals 1

    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->N:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic g(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I
    .locals 1

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->h:I

    return v0
.end method

.method private g()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->P:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->P:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->P:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;

    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I
    .locals 1

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->c:I

    return v0
.end method

.method private h()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->Q:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    sget-object v1, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->SPEEX_16K:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->Q:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    sget-object v1, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->SPEEX_11K:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    if-ne v0, v1, :cond_2

    :cond_0
    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->SPEEX_8K:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->Q:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->Q:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->Q:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    sget-object v1, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->PCM_16_11K:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->Q:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    sget-object v1, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->PCM_16_16K:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->Q:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    sget-object v1, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->PCM_16_22K:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->Q:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    sget-object v1, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->PCM_16_32K:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    if-ne v0, v1, :cond_1

    :cond_3
    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->PCM_16_8K:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->Q:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->Q:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)V

    goto :goto_0
.end method

.method static synthetic i(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$CodecType;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->G:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$CodecType;

    return-object v0
.end method

.method static synthetic j(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I
    .locals 1

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->D:I

    return v0
.end method

.method static synthetic k(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I
    .locals 1

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->F:I

    return v0
.end method

.method static synthetic l(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)[S
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->B:[S

    return-object v0
.end method

.method static synthetic m(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)[B
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->C:[B

    return-object v0
.end method

.method static synthetic n(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I
    .locals 1

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->f:I

    return v0
.end method

.method static synthetic o(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I
    .locals 1

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->m:I

    return v0
.end method

.method static synthetic p(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->I:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    return-object v0
.end method

.method static synthetic q(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I
    .locals 1

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->n:I

    return v0
.end method

.method static synthetic r(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I
    .locals 1

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->l:I

    return v0
.end method

.method static synthetic s(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I
    .locals 1

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->E:I

    return v0
.end method

.method public static native speexCodeToString(I)Ljava/lang/String;
.end method

.method static synthetic t(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I
    .locals 1

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->o:I

    return v0
.end method

.method static synthetic u(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I
    .locals 1

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->p:I

    return v0
.end method

.method static synthetic v(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I
    .locals 1

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->s:I

    return v0
.end method

.method static synthetic w(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I
    .locals 1

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->q:I

    return v0
.end method

.method static synthetic x(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I
    .locals 1

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->r:I

    return v0
.end method

.method static synthetic y(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I
    .locals 1

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->t:I

    return v0
.end method

.method static synthetic z(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->A:Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM;

    return-object v0
.end method


# virtual methods
.method public getInputDevice()Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$InputDevice;
    .locals 1

    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$InputDevice;->MICROPHONE:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$InputDevice;

    return-object v0
.end method

.method public getOutputDevice()Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$OutputDevice;
    .locals 1

    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$OutputDevice;->SPEAKER:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$OutputDevice;

    return-object v0
.end method

.method public getParams(Ljava/util/Vector;)Ljava/util/Vector;
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getType()Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    move-result-object v2

    sget-object v3, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->SDK:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Audio_Source"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->o:I

    sparse-switch v2, :sswitch_data_0

    new-instance v2, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;

    const-string/jumbo v3, "Audio_Source"

    const-string/jumbo v4, "Unkown audio source"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    sget-object v5, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->SDK:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    invoke-direct {v2, v3, v4, v5}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;)V

    invoke-virtual {p1, v1, v2}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_1
    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ep.enable"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;

    const-string/jumbo v2, "ep.enable"

    new-instance v3, Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->A:Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM;

    invoke-virtual {v4}, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM;->isEndPointingActive()Z

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    sget-object v4, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->SDK:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    invoke-direct {v0, v2, v3, v4}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;)V

    invoke-virtual {p1, v0, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    :cond_1
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :sswitch_0
    new-instance v2, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;

    const-string/jumbo v3, "Audio_Source"

    const-string/jumbo v4, "Microphone audio source"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    sget-object v5, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->SDK:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    invoke-direct {v2, v3, v4, v5}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;)V

    invoke-virtual {p1, v1, v2}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :sswitch_1
    new-instance v2, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;

    const-string/jumbo v3, "Audio_Source"

    const-string/jumbo v4, "Default audio source"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    sget-object v5, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->SDK:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    invoke-direct {v2, v3, v4, v5}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;)V

    invoke-virtual {p1, v1, v2}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :sswitch_2
    new-instance v2, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;

    const-string/jumbo v3, "Audio_Source"

    const-string/jumbo v4, "VoiceRecognition audio source"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    sget-object v5, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->SDK:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    invoke-direct {v2, v3, v4, v5}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;)V

    invoke-virtual {p1, v1, v2}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "NMSP_DEFINES_RECORDER_CONTINUES_ON_ENDPOINTER_AND_TIMER_STOPPING"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;

    const-string/jumbo v2, "NMSP_DEFINES_RECORDER_CONTINUES_ON_ENDPOINTER_AND_TIMER_STOPPING"

    new-instance v3, Ljava/lang/Boolean;

    iget-boolean v4, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->J:Z

    invoke-direct {v3, v4}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    sget-object v4, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->SDK:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    invoke-direct {v0, v2, v3, v4}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;)V

    invoke-virtual {p1, v0, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "NMSP_DEFINES_CAPTURING_CONTINUES_ON_ENDPOINTER"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;

    const-string/jumbo v2, "NMSP_DEFINES_CAPTURING_CONTINUES_ON_ENDPOINTER"

    new-instance v3, Ljava/lang/Boolean;

    iget-boolean v4, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->K:Z

    invoke-direct {v3, v4}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    sget-object v4, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->SDK:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    invoke-direct {v0, v2, v3, v4}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;)V

    invoke-virtual {p1, v0, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    goto/16 :goto_2

    :cond_4
    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "USE_ENERGY_LEVEL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;

    const-string/jumbo v2, "USE_ENERGY_LEVEL"

    new-instance v3, Ljava/lang/Boolean;

    iget-boolean v4, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->H:Z

    invoke-direct {v3, v4}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    sget-object v4, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->SDK:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    invoke-direct {v0, v2, v3, v4}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;)V

    invoke-virtual {p1, v1, v0}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_5
    new-instance v2, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "unsupported parameter"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getType()Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;)V

    invoke-virtual {p1, v1, v2}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_6
    return-object p1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method public handleMessage(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "---------------------- AudioSystemAndroid +++++ handleMessage() Thread:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public nextPlayback()Z
    .locals 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "++++++++++++========== nextPlayback() is not implemented"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->info(Ljava/lang/Object;)V

    const/4 v0, 0x0

    return v0
.end method

.method public pausePlayback(I)Z
    .locals 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "++++++++++++========== pausePlayback() is not implemented"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->info(Ljava/lang/Object;)V

    const/4 v0, 0x0

    return v0
.end method

.method public pauseRecording(I)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "++++++++++++========== pauseRecording() is not implemented"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    return-void
.end method

.method public previousPlayback()Z
    .locals 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "++++++++++++========== previousPlayback() is not implemented"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->info(Ljava/lang/Object;)V

    const/4 v0, 0x0

    return v0
.end method

.method public startPlayback(Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$OutputDevice;Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$AudioCallback;Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$DoneCallback;Ljava/lang/Object;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v3, "++++++++++++========== startPlayback()"

    invoke-virtual {v0, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_0
    if-nez p2, :cond_2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "audioCallback cannot be null."

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return v2

    :cond_2
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->O:Landroid/content/Context;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "inputDevice is BLUETOOTH_HEADSET, but ANDROID_CONTEXT parameter is not passed in!!!"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->O:Landroid/content/Context;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->O:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.BLUETOOTH"

    invoke-virtual {v0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    :goto_1
    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->O:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;->createInstance(Landroid/content/Context;)Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->P:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->P:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;->isHeadsetConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->h()V

    :cond_4
    :goto_2
    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$OutputDevice;->SPEAKER:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$OutputDevice;

    if-ne p1, v0, :cond_8

    const/4 v0, 0x3

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->b:I

    invoke-direct {p0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->g()V

    :cond_5
    :goto_3
    new-instance v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;

    invoke-direct {v0, p0, v2}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;-><init>(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;B)V

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->v:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;

    :try_start_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->v:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;

    invoke-virtual {v0, p2, p3, p4}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->a(Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$AudioCallback;Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$DoneCallback;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$AudioSystemException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v1

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_1

    :cond_7
    iput-object v4, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->P:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;

    goto :goto_2

    :cond_8
    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$OutputDevice;->BLUETOOTH_HEADSET:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$OutputDevice;

    if-ne p1, v0, :cond_9

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->P:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->P:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;->getPlaybackStream()I

    move-result v0

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->b:I

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->P:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;->isHeadsetConnected()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->g()V

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "Unexpected outputDevice."

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    :cond_a
    invoke-direct {p0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->g()V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->v:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;

    invoke-static {v1, v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->a(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$AudioSystemException;)V

    iput-object v4, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->v:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;

    goto/16 :goto_0

    :cond_b
    move v0, v1

    goto :goto_1
.end method

.method public startRecording(Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$InputDevice;ZLcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$AudioCallback;Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$StopCallback;Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$ErrorCallback;Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$StartOfSpeechCallback;Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$NoSpeechCallback;Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$EndOfSpeechCallback;Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$EndPointerStartedCallback;Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$EndPointerStoppedCallback;Ljava/lang/Object;)Z
    .locals 10

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "++++++++++++========== startRecording()"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->w:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "previous recording still running!"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    if-nez p3, :cond_4

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "audioCallback cannot be null."

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->O:Landroid/content/Context;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "inputDevice is BLUETOOTH_HEADSET, but ANDROID_CONTEXT parameter is not passed in!!!"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    :cond_6
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->O:Landroid/content/Context;

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->O:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.BLUETOOTH"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :cond_7
    :goto_1
    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->O:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;->createInstance(Landroid/content/Context;)Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->P:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->P:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;->isHeadsetConnected()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->h()V

    :cond_8
    :goto_2
    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$InputDevice;->MICROPHONE:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$InputDevice;

    if-ne p1, v0, :cond_c

    const/4 v0, 0x6

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->o:I

    invoke-direct {p0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->g()V

    :cond_9
    :goto_3
    new-instance v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;-><init>(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;B)V

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->w:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;

    :try_start_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->w:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    invoke-virtual/range {v0 .. v9}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->a(ZLcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$AudioCallback;Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$StopCallback;Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$ErrorCallback;Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$StartOfSpeechCallback;Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$EndOfSpeechCallback;Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$EndPointerStartedCallback;Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$EndPointerStoppedCallback;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$AudioSystemException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_a
    const/4 v0, 0x0

    goto :goto_1

    :cond_b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->P:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;

    goto :goto_2

    :cond_c
    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$InputDevice;->BLUETOOTH_HEADSET:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$InputDevice;

    if-ne p1, v0, :cond_d

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->P:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->P:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;->getRecordingSource()I

    move-result v0

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->o:I

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->P:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;->isHeadsetConnected()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-direct {p0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->g()V

    goto :goto_3

    :cond_d
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "Unexpected inputDevice."

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    :cond_e
    invoke-direct {p0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->g()V

    const/4 v0, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->w:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;

    invoke-static {v1, v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->a(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$AudioSystemException;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->w:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;

    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public stopPlayback(Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$StopCallback;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "++++++++++++========== stopPlayback()"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->v:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->v:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->a(Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$StopCallback;Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->v:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;

    return-void
.end method

.method public stopRecording(Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$StopCallback;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "++++++++++++========== stopRecording()"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_0
    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->w:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;

    if-nez v0, :cond_2

    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$AudioStatus;->AUDIO_OK:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$AudioStatus;

    invoke-interface {p1, v0, p2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$StopCallback;->stopCallback(Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$AudioStatus;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->w:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->a(Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$StopCallback;Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$EndOfSpeechCallback;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public turnOffEndPointer(Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$EndPointerStoppedCallback;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "++++++++++++========== turnOnEndPointer()"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_0
    if-nez p1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->w:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->w:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;

    invoke-virtual {v0, p1}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->a(Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$EndPointerStoppedCallback;)V

    goto :goto_0
.end method

.method public turnOnEndPointer(Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$EndPointerStartedCallback;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "++++++++++++========== turnOnEndPointer()"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_0
    if-nez p1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->w:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->w:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;

    invoke-virtual {v0, p1}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->a(Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$EndPointerStartedCallback;)V

    goto :goto_0
.end method
