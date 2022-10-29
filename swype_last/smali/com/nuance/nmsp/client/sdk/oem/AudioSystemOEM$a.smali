.class final Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;
.super Ljava/lang/Thread;

# interfaces
.implements Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

.field private b:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

.field private c:Landroid/os/Handler;

.field private d:Landroid/media/AudioTrack;

.field private e:[B

.field private f:[S

.field private g:Z

.field private h:I

.field private i:I

.field private j:Z

.field private k:I

.field private l:Z

.field private m:Z

.field private n:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$AudioCallback;

.field private o:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$DoneCallback;

.field private p:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$StopCallback;

.field private q:Ljava/lang/Object;

.field private r:Ljava/lang/Object;

.field private s:I


# direct methods
.method private constructor <init>(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)V
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory;->getLog(Ljava/lang/Class;)Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->b:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->j:Z

    iput-boolean v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->l:Z

    iput-boolean v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->m:Z

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->n:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$AudioCallback;

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->o:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$DoneCallback;

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->p:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$StopCallback;

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->q:Ljava/lang/Object;

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->r:Ljava/lang/Object;

    iput v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->s:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;-><init>(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)V

    return-void
.end method

.method private a([SILcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$IntegerMutable;Ljava/lang/Object;)I
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$AudioSystemException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v7, 0x0

    if-nez p2, :cond_6

    move p2, v7

    :goto_5
    return p2

    :cond_6
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->i(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$CodecType;

    move-result-object v0

    sget-object v2, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$CodecType;->SPEEX:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$CodecType;

    if-ne v0, v2, :cond_c8

    sget v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->maxOffset:I

    sget v2, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->bufferOffset:I

    sub-int v8, v0, v2

    if-lt v8, p2, :cond_29

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->l(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)[S

    move-result-object v0

    sget v1, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->bufferOffset:I

    invoke-static {v0, v1, p1, v7, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->bufferOffset:I

    add-int/2addr v0, p2

    sput v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->bufferOffset:I

    goto :goto_5

    :cond_29
    if-lez v8, :cond_36

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->l(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)[S

    move-result-object v0

    sget v2, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->bufferOffset:I

    invoke-static {v0, v2, p1, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_36
    sput v7, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->bufferOffset:I

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->n:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$AudioCallback;

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v2}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->m(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)[B

    move-result-object v2

    new-instance v3, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$IntegerMutable;

    invoke-direct {v3, v7}, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$IntegerMutable;-><init>(I)V

    move-object v4, p3

    move-object v5, v1

    move-object v6, p4

    invoke-interface/range {v0 .. v6}, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$AudioCallback;->audioCallback([BLjava/lang/Object;Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$IntegerMutable;Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$IntegerMutable;Ljava/lang/Float;Ljava/lang/Object;)V

    iget v0, p3, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$IntegerMutable;->i:I

    if-lez v0, :cond_c3

    sget-object v1, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->speexDecodeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_52
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->m(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)[B

    move-result-object v0

    iget v2, p3, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$IntegerMutable;->i:I

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v3}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->l(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)[S

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v4}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->l(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)[S

    move-result-object v4

    array-length v4, v4

    invoke-static {v0, v2, v3, v4}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->decodeSpeex([BI[SI)I

    move-result v0

    sput v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->maxOffset:I

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v2}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->l(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)[S

    move-result-object v2

    array-length v2, v2

    if-le v0, v2, :cond_7f

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v2}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->l(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)[S

    move-result-object v2

    array-length v2, v2

    sput v2, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->maxOffset:I

    :cond_7f
    monitor-exit v1
    :try_end_80
    .catchall {:try_start_52 .. :try_end_80} :catchall_9c

    if-gez v0, :cond_9f

    new-instance v1, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$AudioSystemException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Call to decodeSpeex() failed with code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->speexCodeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$AudioSystemException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_9c
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_9f
    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->b:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_c3

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->b:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Obtained "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " shorts of PCM data after decoding SPEEX."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_c3
    if-lez v8, :cond_c8

    move p2, v8

    goto/16 :goto_5

    :cond_c8
    move p2, v7

    goto/16 :goto_5
.end method

.method private a()V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$AudioSystemException;
        }
    .end annotation

    const-wide/16 v8, 0x0

    const/4 v11, -0x1

    const/4 v7, 0x0

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a()Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    :try_start_9
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->b:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->b:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "++++++++++++========== onPlay()"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_19
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->i(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$CodecType;

    move-result-object v0

    sget-object v1, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$CodecType;->SPEEX:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$CodecType;

    if-ne v0, v1, :cond_213

    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->j:Z

    if-eqz v0, :cond_3d0

    new-instance v1, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$IntegerMutable;

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->n(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v0

    invoke-direct {v1, v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$IntegerMutable;-><init>(I)V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->n(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v0

    new-array v2, v0, [S

    move v0, v7

    :cond_3b
    :goto_3b
    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v3}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->n(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v3

    if-ge v0, v3, :cond_51

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->b()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_48
    .catchall {:try_start_9 .. :try_end_48} :catchall_a9

    :try_start_48
    iget-boolean v4, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->l:Z

    if-eqz v4, :cond_7c

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->j:Z

    monitor-exit v3
    :try_end_50
    .catchall {:try_start_48 .. :try_end_50} :catchall_ac

    move v0, v7

    :cond_51
    :goto_51
    if-lez v0, :cond_be

    :try_start_53
    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v1}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->n(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v1

    if-ge v0, v1, :cond_be

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->b:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_6b

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->b:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v2, "Filling buffer with silence."

    invoke-virtual {v1, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_6b
    move v1, v0

    :goto_6c
    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v2}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->n(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v2

    if-ge v1, v2, :cond_be

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->f:[S

    const/4 v3, 0x0

    aput-short v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6c

    :cond_7c
    monitor-exit v3

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v3}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->n(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v3

    sub-int/2addr v3, v0

    iget-object v4, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->q:Ljava/lang/Object;

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->a([SILcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$IntegerMutable;Ljava/lang/Object;)I
    :try_end_89
    .catchall {:try_start_53 .. :try_end_89} :catchall_a9

    move-result v3

    if-nez v3, :cond_91

    const-wide/16 v4, 0x12c

    :try_start_8e
    invoke-static {v4, v5}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->sleep(J)V
    :try_end_91
    .catch Ljava/lang/InterruptedException; {:try_start_8e .. :try_end_91} :catch_3be
    .catchall {:try_start_8e .. :try_end_91} :catchall_a9

    :cond_91
    :goto_91
    :try_start_91
    iget v4, v1, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$IntegerMutable;->i:I

    if-ne v4, v11, :cond_af

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->b:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_a5

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->b:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v2, "No more data to playback."

    invoke-virtual {v1, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_a5
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->j:Z
    :try_end_a8
    .catchall {:try_start_91 .. :try_end_a8} :catchall_a9

    goto :goto_51

    :catchall_a9
    move-exception v0

    monitor-exit v10

    throw v0

    :catchall_ac
    move-exception v0

    :try_start_ad
    monitor-exit v3

    throw v0

    :cond_af
    iget v4, v1, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$IntegerMutable;->i:I

    if-lez v4, :cond_3b

    if-lez v3, :cond_3b

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->f:[S

    invoke-static {v2, v4, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v3

    goto/16 :goto_3b

    :cond_be
    if-lez v0, :cond_108

    :goto_c0
    if-eqz v0, :cond_da

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->d:Landroid/media/AudioTrack;

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->f:[S

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v3}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->n(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v3

    invoke-virtual {v1, v2, v7, v3}, Landroid/media/AudioTrack;->write([SII)I

    move-result v1

    if-lez v1, :cond_da

    sub-int/2addr v0, v1

    add-int/2addr v7, v1

    iget v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->i:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->i:I

    goto :goto_c0

    :cond_da
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->d:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->i:I

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setNotificationMarkerPosition(I)I

    move-result v0

    if-eqz v0, :cond_fa

    new-instance v1, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$AudioSystemException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Call to AudioTrack.setNotificationMarkerPosition() SPEEX 0 failed with code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$AudioSystemException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_fa
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->c:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_106
    :goto_106
    monitor-exit v10

    :goto_107
    return-void

    :cond_108
    iget v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->i:I

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v1}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->o(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v1

    if-ge v0, v1, :cond_161

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->o(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v0

    iget v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->i:I

    sub-int/2addr v0, v1

    new-array v1, v0, [S

    :goto_11d
    if-ge v7, v0, :cond_125

    const/4 v2, 0x0

    aput-short v2, v1, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_11d

    :cond_125
    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->d:Landroid/media/AudioTrack;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Landroid/media/AudioTrack;->write([SII)I

    move-result v0

    if-lez v0, :cond_133

    iget v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->i:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->i:I

    :cond_133
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->d:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->i:I

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setNotificationMarkerPosition(I)I

    move-result v0

    if-eqz v0, :cond_153

    new-instance v1, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$AudioSystemException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Call to AudioTrack.setNotificationMarkerPosition() SPEEX 1 failed with code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$AudioSystemException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_153
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->c:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    monitor-exit v10

    goto :goto_107

    :cond_161
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->b:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_184

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->b:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onPlay() AudioTrack status is :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->d:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_184
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->d:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-eqz v0, :cond_3cd

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->d:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v7

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->k:I

    if-ne v7, v0, :cond_3ca

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->i:I

    :goto_198
    iput v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->k:I

    :goto_19a
    iget v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->i:I

    if-ge v0, v1, :cond_1a6

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->d:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getState()I

    move-result v1

    if-nez v1, :cond_106

    :cond_1a6
    if-le v0, v7, :cond_1b4

    sub-int v1, v0, v7

    mul-int/lit16 v1, v1, 0x3e8

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v2}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->k(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v2

    div-int/2addr v1, v2

    int-to-long v8, v1

    :cond_1b4
    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->b:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_203

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->b:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v2, "calculating the delay......"

    invoke-virtual {v1, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->b:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "parameter pos = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->b:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "parameter prev_pos = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->b:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "parameter delay = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_203
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->p(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    move-result-object v0

    new-instance v1, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a$2;

    invoke-direct {v1, p0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a$2;-><init>(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;)V

    invoke-interface {v0, v1, v8, v9}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->scheduleTask(Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;J)V

    goto/16 :goto_106

    :cond_213
    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->j:Z

    if-eqz v0, :cond_3c7

    new-instance v3, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$IntegerMutable;

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->c(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v0

    invoke-direct {v3, v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$IntegerMutable;-><init>(I)V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->n:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$AudioCallback;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->e:[B

    const/4 v2, 0x0

    new-instance v4, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$IntegerMutable;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$IntegerMutable;-><init>(I)V

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->q:Ljava/lang/Object;

    invoke-interface/range {v0 .. v6}, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$AudioCallback;->audioCallback([BLjava/lang/Object;Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$IntegerMutable;Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$IntegerMutable;Ljava/lang/Float;Ljava/lang/Object;)V

    iget v0, v3, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$IntegerMutable;->i:I

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->b:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_27b

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->b:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "PLAYBACK: Sample #"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->s:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->s:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ". Asked for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v3}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->c(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " bytes of data, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " bytes received."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_27b
    :goto_27b
    if-nez v0, :cond_2ab

    iget v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->h:I

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v2}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->c(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v2

    if-ge v1, v2, :cond_2ab

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->b:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_297

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->b:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "Filling buffer with silence."

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_297
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->c(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v0

    iget v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->h:I

    sub-int/2addr v0, v1

    move v1, v7

    :goto_2a1
    if-ge v1, v0, :cond_2ab

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->e:[B

    const/4 v3, 0x0

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2a1

    :cond_2ab
    if-eq v0, v11, :cond_2f1

    :goto_2ad
    if-eqz v0, :cond_2c1

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->d:Landroid/media/AudioTrack;

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->e:[B

    invoke-virtual {v1, v2, v7, v0}, Landroid/media/AudioTrack;->write([BII)I

    move-result v1

    if-lez v1, :cond_2c1

    sub-int/2addr v0, v1

    add-int/2addr v7, v1

    iget v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->h:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->h:I

    goto :goto_2ad

    :cond_2c1
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->d:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->h:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setNotificationMarkerPosition(I)I

    move-result v0

    if-eqz v0, :cond_2e3

    new-instance v1, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$AudioSystemException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Call to AudioTrack.setNotificationMarkerPosition() PCM 0 failed with code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$AudioSystemException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2e3
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->c:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_106

    :cond_2f1
    iget v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->h:I

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v1}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->q(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v1

    if-ge v0, v1, :cond_34d

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->q(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v0

    iget v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->h:I

    sub-int/2addr v0, v1

    new-array v1, v0, [B

    :goto_306
    if-ge v7, v0, :cond_30e

    const/4 v2, 0x0

    aput-byte v2, v1, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_306

    :cond_30e
    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->d:Landroid/media/AudioTrack;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Landroid/media/AudioTrack;->write([BII)I

    move-result v0

    if-lez v0, :cond_31c

    iget v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->h:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->h:I

    :cond_31c
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->d:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->h:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setNotificationMarkerPosition(I)I

    move-result v0

    if-eqz v0, :cond_33e

    new-instance v1, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$AudioSystemException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Call to AudioTrack.setNotificationMarkerPosition() PCM 1 failed with code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$AudioSystemException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_33e
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->c:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    monitor-exit v10

    goto/16 :goto_107

    :cond_34d
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->b:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_370

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->b:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onPlay() AudioTrack status is :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->d:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_370
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->d:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-eqz v0, :cond_3c5

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->d:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v0

    iget v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->k:I

    if-ne v0, v1, :cond_3c3

    iget v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->h:I

    div-int/lit8 v7, v1, 0x2

    :goto_386
    iput v7, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->k:I

    :goto_388
    iget v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->h:I

    div-int/lit8 v1, v1, 0x2

    if-lt v7, v1, :cond_106

    if-le v7, v0, :cond_3c1

    sub-int v0, v7, v0

    mul-int/lit16 v0, v0, 0x3e8

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v1}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->k(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v1

    div-int/2addr v0, v1

    int-to-long v0, v0

    :goto_39c
    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v2}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->r(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_3ae

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->r(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v0

    int-to-long v0, v0

    :cond_3ae
    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v2}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->p(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    move-result-object v2

    new-instance v3, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a$3;

    invoke-direct {v3, p0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a$3;-><init>(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;)V

    invoke-interface {v2, v3, v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->scheduleTask(Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;J)V
    :try_end_3bc
    .catchall {:try_start_ad .. :try_end_3bc} :catchall_a9

    goto/16 :goto_106

    :catch_3be
    move-exception v4

    goto/16 :goto_91

    :cond_3c1
    move-wide v0, v8

    goto :goto_39c

    :cond_3c3
    move v7, v0

    goto :goto_386

    :cond_3c5
    move v0, v7

    goto :goto_388

    :cond_3c7
    move v0, v7

    goto/16 :goto_27b

    :cond_3ca
    move v0, v7

    goto/16 :goto_198

    :cond_3cd
    move v0, v7

    goto/16 :goto_19a

    :cond_3d0
    move v0, v7

    goto/16 :goto_51
.end method

.method private a(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$AudioSystemException;)V
    .registers 6

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_5
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->b:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->b:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {p1}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$AudioSystemException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    :cond_16
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->d:Landroid/media/AudioTrack;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->d:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_28

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->d:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    :cond_28
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->d:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_36

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->j:Z

    :cond_39
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;

    move-result-object v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;->stopBluetoothSco()V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->b(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)V

    :cond_4f
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->o:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$DoneCallback;

    sget-object v2, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$AudioStatus;->AUDIO_ERROR:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$AudioStatus;

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->q:Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$DoneCallback;->doneCallback(Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$AudioStatus;Ljava/lang/Object;)V

    monitor-exit v1
    :try_end_59
    .catchall {:try_start_5 .. :try_end_59} :catchall_5a

    return-void

    :catchall_5a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$AudioSystemException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->a()V

    return-void
.end method

.method static synthetic a(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$AudioSystemException;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->a(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$AudioSystemException;)V

    return-void
.end method

.method static synthetic a(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;Z)Z
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->m:Z

    return v0
.end method

.method static synthetic b(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;)V
    .registers 5

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->b:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->b:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "Calling AudioSystemOEM.onStop()"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_10
    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_15
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->d:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V
    :try_end_1a
    .catch Ljava/lang/IllegalStateException; {:try_start_15 .. :try_end_1a} :catch_75
    .catchall {:try_start_15 .. :try_end_1a} :catchall_87

    :cond_1a
    :goto_1a
    const/4 v0, 0x0

    :try_start_1b
    iput-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->j:Z

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->d:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->d:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;

    move-result-object v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;->stopBluetoothSco()V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->b(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)V

    :cond_3d
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->i(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$CodecType;

    move-result-object v0

    sget-object v2, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$CodecType;->SPEEX:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$CodecType;

    if-ne v0, v2, :cond_73

    sget-object v2, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->speexDecodeLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_4a
    .catchall {:try_start_1b .. :try_end_4a} :catchall_87

    :try_start_4a
    sget-boolean v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->isSpeexDecodeInit:Z

    if-eqz v0, :cond_8a

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->decodeCleanupSpeex()V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;[S)[S

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;[B)[B

    const/4 v0, 0x0

    sput-boolean v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->isSpeexDecodeInit:Z

    :cond_60
    :goto_60
    monitor-exit v2
    :try_end_61
    .catchall {:try_start_4a .. :try_end_61} :catchall_9b

    :try_start_61
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->p:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$StopCallback;

    sget-object v2, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$AudioStatus;->AUDIO_OK:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$AudioStatus;

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->r:Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$StopCallback;->stopCallback(Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$AudioStatus;Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_73

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_73
    monitor-exit v1

    return-void

    :catch_75
    move-exception v0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->b:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->b:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v2, "Could not stop audioTrack."

    invoke-virtual {v0, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V
    :try_end_86
    .catchall {:try_start_61 .. :try_end_86} :catchall_87

    goto :goto_1a

    :catchall_87
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_8a
    :try_start_8a
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->b:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->b:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v3, "Attempting to cleanup speex decode while it is already stopped"

    invoke-virtual {v0, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V
    :try_end_9a
    .catchall {:try_start_8a .. :try_end_9a} :catchall_9b

    goto :goto_60

    :catchall_9b
    move-exception v0

    :try_start_9c
    monitor-exit v2

    throw v0
    :try_end_9e
    .catchall {:try_start_9c .. :try_end_9e} :catchall_87
.end method

.method static synthetic b(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;Z)Z
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->j:Z

    return v0
.end method

.method static synthetic c(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;)Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;
    .registers 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->b:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    return-object v0
.end method

.method static synthetic d(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;)Landroid/media/AudioTrack;
    .registers 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->d:Landroid/media/AudioTrack;

    return-object v0
.end method

.method static synthetic e(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->l:Z

    return v0
.end method

.method static synthetic f(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->m:Z

    return v0
.end method

.method static synthetic g(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->q:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic h(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;)Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$DoneCallback;
    .registers 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->o:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$DoneCallback;

    return-object v0
.end method

.method static synthetic i(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->c:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$AudioCallback;Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$DoneCallback;Ljava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$AudioSystemException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;->startBluetoothSco()V

    :cond_11
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_13
    iput v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->s:I

    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->n:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$AudioCallback;

    iput-object p2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->o:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$DoneCallback;

    iput-object p3, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->q:Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->i(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$CodecType;

    move-result-object v0

    sget-object v1, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$CodecType;->SPEEX:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$CodecType;

    if-ne v0, v1, :cond_77

    sget-object v1, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->speexDecodeLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_28
    .catchall {:try_start_13 .. :try_end_28} :catchall_58

    :try_start_28
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->j(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v3}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->k(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->decodeInitSpeex(III)I

    move-result v0

    if-gez v0, :cond_5b

    new-instance v2, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$AudioSystemException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "decodeInitSpeex failed with code: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->speexCodeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$AudioSystemException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_55
    .catchall {:try_start_28 .. :try_end_55} :catchall_55

    :catchall_55
    move-exception v0

    :try_start_56
    monitor-exit v1

    throw v0
    :try_end_58
    .catchall {:try_start_56 .. :try_end_58} :catchall_58

    :catchall_58
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5b
    :try_start_5b
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    const/high16 v2, 0x80000

    new-array v2, v2, [S

    invoke-static {v0, v2}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;[S)[S

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    const/high16 v2, 0x80000

    new-array v2, v2, [B

    invoke-static {v0, v2}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;[B)[B

    const/4 v0, 0x1

    sput-boolean v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->isSpeexDecodeInit:Z

    monitor-exit v1
    :try_end_71
    .catchall {:try_start_5b .. :try_end_71} :catchall_55

    const/4 v0, 0x0

    :try_start_72
    sput v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->bufferOffset:I

    const/4 v0, 0x0

    sput v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->maxOffset:I

    :cond_77
    invoke-virtual {p0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->start()V

    :goto_7a
    invoke-virtual {p0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_8a

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->c:Landroid/os/Handler;
    :try_end_82
    .catchall {:try_start_72 .. :try_end_82} :catchall_58

    if-nez v0, :cond_8a

    :try_start_84
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_87
    .catch Ljava/lang/InterruptedException; {:try_start_84 .. :try_end_87} :catch_88
    .catchall {:try_start_84 .. :try_end_87} :catchall_58

    goto :goto_7a

    :catch_88
    move-exception v0

    goto :goto_7a

    :cond_8a
    :try_start_8a
    invoke-virtual {p0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->isAlive()Z

    move-result v0

    if-nez v0, :cond_92

    monitor-exit p0

    :goto_91
    return-void

    :cond_92
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->c:Landroid/os/Handler;

    if-eqz v0, :cond_a2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->c:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_a2
    monitor-exit p0
    :try_end_a3
    .catchall {:try_start_8a .. :try_end_a3} :catchall_58

    goto :goto_91
.end method

.method public final a(Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$StopCallback;Ljava/lang/Object;)V
    .registers 6

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->b()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_6
    iput-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->l:Z

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_23

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_f
    iput-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->j:Z

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_26

    monitor-enter p0

    :try_start_13
    iput-object p2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->r:Ljava/lang/Object;

    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->p:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$StopCallback;

    invoke-virtual {p0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->g:Z

    if-eqz v0, :cond_29

    :cond_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_13 .. :try_end_22} :catchall_4b

    :goto_22
    return-void

    :catchall_23
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_26
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_29
    :try_start_29
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->c:Landroid/os/Handler;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->c:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_39
    :goto_39
    invoke-virtual {p0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_49

    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->g:Z
    :try_end_41
    .catchall {:try_start_29 .. :try_end_41} :catchall_4b

    if-nez v0, :cond_49

    :try_start_43
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_46
    .catch Ljava/lang/InterruptedException; {:try_start_43 .. :try_end_46} :catch_47
    .catchall {:try_start_43 .. :try_end_46} :catchall_4b

    goto :goto_39

    :catch_47
    move-exception v0

    goto :goto_39

    :cond_49
    :try_start_49
    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_4b

    goto :goto_22

    :catchall_4b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onMarkerReached(Landroid/media/AudioTrack;)V
    .registers 3

    :try_start_0
    invoke-direct {p0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->a()V
    :try_end_3
    .catch Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$AudioSystemException; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->a(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$AudioSystemException;)V

    goto :goto_3
.end method

.method public final onPeriodicNotification(Landroid/media/AudioTrack;)V
    .registers 2

    return-void
.end method

.method public final run()V
    .registers 10

    const/4 v8, 0x1

    invoke-static {}, Landroid/os/Looper;->prepare()V

    monitor-enter p0

    :try_start_5
    new-instance v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a$1;

    invoke-direct {v0, p0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a$1;-><init>(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;)V

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->c:Landroid/os/Handler;
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_9f

    :try_start_c
    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7
    :try_end_11
    .catch Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$AudioSystemException; {:try_start_c .. :try_end_11} :catch_7b
    .catchall {:try_start_c .. :try_end_11} :catchall_9f

    :try_start_11
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->b:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->b:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "Creating Audio Track"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_21
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->c(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->e:[B

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->d(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v0

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->f:[S
    :try_end_35
    .catchall {:try_start_11 .. :try_end_35} :catchall_78

    const/4 v0, 0x0

    :try_start_36
    iput v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->k:I

    new-instance v0, Landroid/media/AudioTrack;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v1}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->e(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v1

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v2}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->f(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v5}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->g(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v5

    iget-object v6, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v6}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->h(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v6

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->d:Landroid/media/AudioTrack;

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->d:Landroid/media/AudioTrack;

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->d:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-eq v0, v8, :cond_81

    :cond_65
    new-instance v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$AudioSystemException;

    const-string/jumbo v1, "AudioTrack object has not been initialized correctly. One or several parameters used to create it must be wrong."

    invoke-direct {v0, v1}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$AudioSystemException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_36 .. :try_end_6e} :catch_6e
    .catchall {:try_start_36 .. :try_end_6e} :catchall_78

    :catch_6e
    move-exception v0

    :try_start_6f
    new-instance v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$AudioSystemException;

    const-string/jumbo v1, "Could not instanciate AudioTrack object."

    invoke-direct {v0, v1}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$AudioSystemException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_78
    .catchall {:try_start_6f .. :try_end_78} :catchall_78

    :catchall_78
    move-exception v0

    :try_start_79
    monitor-exit v7

    throw v0
    :try_end_7b
    .catch Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$AudioSystemException; {:try_start_79 .. :try_end_7b} :catch_7b
    .catchall {:try_start_79 .. :try_end_7b} :catchall_9f

    :catch_7b
    move-exception v0

    :try_start_7c
    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->a(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$AudioSystemException;)V

    monitor-exit p0
    :try_end_80
    .catchall {:try_start_7c .. :try_end_80} :catchall_9f

    :goto_80
    return-void

    :cond_81
    :try_start_81
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->d:Landroid/media/AudioTrack;

    invoke-virtual {v0, p0}, Landroid/media/AudioTrack;->setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;)V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->d:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V
    :try_end_8b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_81 .. :try_end_8b} :catch_6e
    .catchall {:try_start_81 .. :try_end_8b} :catchall_78

    :try_start_8b
    monitor-exit v7
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_78

    :try_start_8c
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_90
    .catchall {:try_start_8c .. :try_end_90} :catchall_9f

    invoke-static {}, Landroid/os/Looper;->loop()V

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_95
    iput-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->g:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_9b
    .catchall {:try_start_95 .. :try_end_9b} :catchall_9c

    goto :goto_80

    :catchall_9c
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_9f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
