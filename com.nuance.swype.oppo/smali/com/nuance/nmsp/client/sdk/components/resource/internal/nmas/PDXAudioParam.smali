.class public Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXAudioParam;
.super Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXParam;

# interfaces
.implements Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageHandler;
.implements Lcom/nuance/nmsp/client/sdk/components/resource/nmas/AudioParam;


# static fields
.field private static final a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;


# instance fields
.field private b:I

.field private c:Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;

.field private d:Z

.field private e:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXAudioParam;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory;->getLog(Ljava/lang/Class;)Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXAudioParam;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXParam;-><init>(Ljava/lang/String;B)V

    iput-boolean v3, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXAudioParam;->d:Z

    iput-object p2, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXAudioParam;->c:Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;

    iput-object p3, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXAudioParam;->e:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    invoke-virtual {p2}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->getNewAudioId()I

    move-result v0

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXAudioParam;->b:I

    new-instance v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;-><init>(BLjava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-interface {p3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->getVRAddr()[Ljava/lang/Object;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-interface {p3, v0, p0, v1, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->send(Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageHandler;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addAudioBuf([BIIZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmsp/client/sdk/components/general/TransactionProcessingException;
        }
    .end annotation

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_0

    if-nez p4, :cond_0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXAudioParam;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string v1, "PDXAudioParam.addAudioBuf() in (NMSPAudioSink)PDXAudioParam.addAudioBuf(), the param \"buffer\" is null."

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "in (NMSPAudioSink)PDXAudioParam.addAudioBuf(), the param \"buffer\" is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p1, :cond_1

    if-gez p2, :cond_1

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXAudioParam;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string v1, "PDXAudioParam.addAudioBuf() the offset of the \"buffer\" is less than 0"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the offset of the \"buffer\" is less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p1, :cond_2

    if-gtz p3, :cond_2

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXAudioParam;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string v1, "PDXAudioParam.addAudioBuf() the indicated length of the \"buffer\" is less than 1 byte"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the indicated length of the \"buffer\" is less than 1 byte"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXAudioParam;->d:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXAudioParam;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string v1, "PDXAudioParam.addAudioBuf() last audio buffer already added!"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/general/TransactionProcessingException;

    const-string v1, "last audio buffer already added!"

    invoke-direct {v0, v1}, Lcom/nuance/nmsp/client/sdk/components/general/TransactionProcessingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-eqz p4, :cond_4

    iput-boolean v2, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXAudioParam;->d:Z

    :cond_4
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    new-array v0, p3, [B

    invoke-static {p1, p2, v0, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v4

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p4}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v0, v1, v2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXAudioParam;->e:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    new-instance v2, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;

    invoke-direct {v2, v3, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;-><init>(BLjava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXAudioParam;->e:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    invoke-interface {v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->getVRAddr()[Ljava/lang/Object;

    move-result-object v3

    aget-object v3, v3, v4

    invoke-interface {v0, v2, p0, v1, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->send(Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageHandler;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method protected getBufferId()I
    .locals 1

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXAudioParam;->b:I

    return v0
.end method

.method public handleMessage(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    const/4 v5, 0x0

    check-cast p1, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;

    iget-byte v0, p1, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;->command:B

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXAudioParam;->c:Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;

    iget v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXAudioParam;->b:I

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->vapRecordBegin(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;->data:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    aget-object v1, v0, v5

    check-cast v1, [B

    const/4 v2, 0x1

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXAudioParam;->c:Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;

    invoke-virtual {v2}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->getInputCodec()Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/nmsp/client/sdk/common/util/Util;->isSpeexCodec(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXAudioParam;->c:Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;

    invoke-virtual {v2}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->getInputCodec()Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/nmsp/client/sdk/common/util/Util;->isOpusCodec(Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    array-length v3, v1

    const/16 v4, 0x80

    if-ge v3, v4, :cond_3

    array-length v3, v1

    and-int/lit8 v3, v3, 0x7f

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_1
    array-length v3, v1

    invoke-virtual {v2, v1, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXAudioParam;->c:Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iget v3, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXAudioParam;->b:I

    invoke-virtual {v1, v2, v3}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->vapRecord([BI)V

    :cond_2
    :goto_2
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXAudioParam;->c:Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;

    iget v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXAudioParam;->b:I

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->vapRecordEnd(I)V

    goto :goto_0

    :cond_3
    array-length v3, v1

    const/16 v4, 0x4000

    if-ge v3, v4, :cond_4

    array-length v3, v1

    shr-int/lit8 v3, v3, 0x7

    and-int/lit8 v3, v3, 0x7f

    or-int/lit16 v3, v3, 0x80

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v3, v1

    and-int/lit8 v3, v3, 0x7f

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    :cond_4
    array-length v3, v1

    const/high16 v4, 0x200000

    if-ge v3, v4, :cond_5

    array-length v3, v1

    shr-int/lit8 v3, v3, 0xe

    and-int/lit8 v3, v3, 0x7f

    or-int/lit16 v3, v3, 0x80

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v3, v1

    shr-int/lit8 v3, v3, 0x7

    and-int/lit8 v3, v3, 0x7f

    or-int/lit16 v3, v3, 0x80

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v3, v1

    and-int/lit8 v3, v3, 0x7f

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    :cond_5
    array-length v3, v1

    const/high16 v4, 0x10000000

    if-ge v3, v4, :cond_6

    array-length v3, v1

    shr-int/lit8 v3, v3, 0x15

    and-int/lit8 v3, v3, 0x7f

    or-int/lit16 v3, v3, 0x80

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v3, v1

    shr-int/lit8 v3, v3, 0xe

    and-int/lit8 v3, v3, 0x7f

    or-int/lit16 v3, v3, 0x80

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v3, v1

    shr-int/lit8 v3, v3, 0x7

    and-int/lit8 v3, v3, 0x7f

    or-int/lit16 v3, v3, 0x80

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v3, v1

    and-int/lit8 v3, v3, 0x7f

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    :cond_6
    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXAudioParam;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string v1, "buffer size is too big!"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_7
    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXAudioParam;->c:Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;

    iget v3, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXAudioParam;->b:I

    invoke-virtual {v2, v1, v3}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/common/NMSPSession;->vapRecord([BI)V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
