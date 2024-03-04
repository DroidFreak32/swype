.class final Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/AudioRecord$OnRecordPositionUpdateListener;
.implements Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

.field private b:Landroid/media/AudioRecord;

.field private c:Z

.field private d:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$AudioCallback;

.field private e:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$EndOfSpeechCallback;

.field private f:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$StartOfSpeechCallback;

.field private g:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$EndPointerStartedCallback;

.field private h:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$EndPointerStoppedCallback;

.field private i:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$StopCallback;

.field private j:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$ErrorCallback;

.field private k:Z

.field private l:Z

.field private m:Ljava/lang/Object;

.field private n:I

.field private synthetic o:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;


# direct methods
.method private constructor <init>(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->o:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory;->getLog(Ljava/lang/Class;)Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->d:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$AudioCallback;

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->e:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$EndOfSpeechCallback;

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->f:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$StartOfSpeechCallback;

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->g:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$EndPointerStartedCallback;

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->h:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$EndPointerStoppedCallback;

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->i:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$StopCallback;

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->j:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$ErrorCallback;

    iput-boolean v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->k:Z

    iput-boolean v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->l:Z

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->m:Ljava/lang/Object;

    iput v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->n:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;-><init>(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)V

    return-void
.end method

.method private static a([S)F
    .locals 8

    const-wide/16 v4, 0x0

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    aget-short v3, p0, v2

    int-to-long v6, v3

    mul-long/2addr v6, v6

    const/16 v3, 0x9

    shr-long/2addr v6, v3

    add-long/2addr v0, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    long-to-double v0, v0

    const-wide/high16 v2, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr v0, v2

    const-wide v2, 0x3e112e0be826d695L    # 1.0E-9

    cmpg-double v2, v0, v2

    if-gez v2, :cond_2

    const-wide v0, -0x3fa9800000000000L    # -90.0

    :cond_1
    :goto_1
    double-to-float v0, v0

    return v0

    :cond_2
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    cmpl-double v2, v0, v4

    if-lez v2, :cond_1

    move-wide v0, v4

    goto :goto_1
.end method

.method private a(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$AudioSystemException;)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {p1}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$AudioSystemException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->c:Z

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->b:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->c()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->c:Z

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->b:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->b:Landroid/media/AudioRecord;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->j:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$ErrorCallback;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->m:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$ErrorCallback;->errorCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->o:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->i(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$CodecType;

    move-result-object v0

    sget-object v1, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$CodecType;->SPEEX:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$CodecType;

    if-ne v0, v1, :cond_3

    sget-object v1, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->speexEncodeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->encodeCleanupSpeex()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_3
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->o:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->o:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;->stopBluetoothSco()V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->o:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->b(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)V

    :cond_4
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->i:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$StopCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->i:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$StopCallback;

    sget-object v1, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$AudioStatus;->AUDIO_ERROR:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$AudioStatus;

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->m:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$StopCallback;->stopCallback(Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$AudioStatus;Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$AudioSystemException;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->a(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$AudioSystemException;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$EndPointerStartedCallback;)V
    .locals 5

    const/4 v4, 0x0

    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->g:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$EndPointerStartedCallback;

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->o:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->p(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->d()Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->o:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v2}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->p(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    move-result-object v2

    invoke-interface {v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->getMyAddr()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->o:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v3}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->p(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    move-result-object v3

    invoke-interface {v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->getVRAddr()[Ljava/lang/Object;

    move-result-object v3

    aget-object v3, v3, v4

    invoke-interface {v0, v1, p0, v2, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->send(Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageHandler;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$EndPointerStoppedCallback;)V
    .locals 5

    const/4 v4, 0x0

    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->h:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$EndPointerStoppedCallback;

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->o:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->p(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->e()Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->o:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v2}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->p(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    move-result-object v2

    invoke-interface {v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->getMyAddr()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->o:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v3}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->p(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    move-result-object v3

    invoke-interface {v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->getVRAddr()[Ljava/lang/Object;

    move-result-object v3

    aget-object v3, v3, v4

    invoke-interface {v0, v1, p0, v2, v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->send(Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageHandler;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$StopCallback;Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$EndOfSpeechCallback;Ljava/lang/Object;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->c:Z

    if-ne v2, v1, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->o:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v2}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->C(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    iget-boolean v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->c:Z

    if-eq v2, v1, :cond_5

    :goto_0
    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->c()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->c:Z

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->b:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->release()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->b:Landroid/media/AudioRecord;

    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    :try_start_2
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->o:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->i(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$CodecType;

    move-result-object v0

    sget-object v1, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$CodecType;->SPEEX:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$CodecType;

    if-ne v0, v1, :cond_1

    sget-object v1, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->speexEncodeLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->encodeCleanupSpeex()V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->o:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->o:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;->stopBluetoothSco()V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->o:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->b(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)V

    :cond_2
    if-eqz p2, :cond_3

    invoke-interface {p2, p3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$EndOfSpeechCallback;->endOfSpeechCallback(Ljava/lang/Object;)V

    :cond_3
    if-eqz p1, :cond_4

    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$AudioStatus;->AUDIO_OK:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$AudioStatus;

    invoke-interface {p1, v0, p3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$StopCallback;->stopCallback(Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$AudioStatus;Ljava/lang/Object;)V

    :cond_4
    return-void

    :cond_5
    :try_start_4
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->b:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string v1, "Could not stop audioRecord."

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1

    throw v0
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public final a(ZLcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$AudioCallback;Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$StopCallback;Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$ErrorCallback;Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$StartOfSpeechCallback;Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$EndOfSpeechCallback;Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$EndPointerStartedCallback;Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$EndPointerStoppedCallback;Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$AudioSystemException;
        }
    .end annotation

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->o:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v1}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->o:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v1}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;->startBluetoothSco()V

    :cond_0
    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->c()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    const/4 v1, 0x0

    :try_start_0
    iput v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->n:I

    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->m:Ljava/lang/Object;

    iput-object p2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->d:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$AudioCallback;

    iput-object p6, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->e:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$EndOfSpeechCallback;

    iput-object p5, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->f:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$StartOfSpeechCallback;

    iput-object p7, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->g:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$EndPointerStartedCallback;

    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->h:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$EndPointerStoppedCallback;

    iput-object p3, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->i:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$StopCallback;

    iput-object p4, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->j:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$ErrorCallback;

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->g:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$EndPointerStartedCallback;

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->m:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->a(Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$EndPointerStartedCallback;)V

    :cond_1
    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->o:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v1}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->i(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$CodecType;

    move-result-object v1

    sget-object v2, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$CodecType;->SPEEX:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$CodecType;

    if-ne v1, v2, :cond_2

    sget-object v2, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->speexEncodeLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->o:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v1}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->j(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v1

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->o:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v3}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->k(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v3

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->o:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v5}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->s(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v5

    const/4 v6, 0x1

    invoke-static {v1, v3, v4, v5, v6}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->encodeInitSpeex(IIIII)I

    move-result v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-gez v1, :cond_2

    :try_start_2
    new-instance v2, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$AudioSystemException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "encodeInitSpeex failed with code:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->speexCodeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$AudioSystemException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v7

    throw v1

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    :try_start_4
    new-instance v1, Landroid/media/AudioRecord;

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->o:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v2}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->t(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v2

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->o:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v3}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->u(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->o:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v6}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->v(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v6

    invoke-direct/range {v1 .. v6}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->b:Landroid/media/AudioRecord;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->b:Landroid/media/AudioRecord;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->b:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    :cond_3
    new-instance v1, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$AudioSystemException;

    const-string v2, "AudioRecord object has not been initialized correctly. One or several parameters used to create it must be wrong."

    invoke-direct {v1, v2}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$AudioSystemException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_0
    move-exception v1

    :try_start_5
    new-instance v1, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$AudioSystemException;

    const-string v2, "Could not instanciate AudioRecord object."

    invoke-direct {v1, v2}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$AudioSystemException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->c:Z

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->b:Landroid/media/AudioRecord;

    invoke-virtual {v1, p0}, Landroid/media/AudioRecord;->setRecordPositionUpdateListener(Landroid/media/AudioRecord$OnRecordPositionUpdateListener;)V

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->b:Landroid/media/AudioRecord;

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->o:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v2}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->w(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioRecord;->setPositionNotificationPeriod(I)I

    move-result v1

    if-eqz v1, :cond_5

    new-instance v2, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$AudioSystemException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Call to AudioRecord.setPositionNotificationPeriod() failed with code:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$AudioSystemException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_5
    :try_start_6
    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->b:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/4 v1, 0x0

    :try_start_7
    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->o:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v2}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->w(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v2

    new-array v2, v2, [S

    :cond_6
    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->b:Landroid/media/AudioRecord;

    iget-object v4, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->o:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v4}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->w(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v3, v2, v1, v4}, Landroid/media/AudioRecord;->read([SII)I

    move-result v3

    const/4 v4, -0x3

    if-eq v3, v4, :cond_7

    const/4 v4, -0x2

    if-ne v3, v4, :cond_8

    :cond_7
    new-instance v1, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$AudioSystemException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Call to AudioRecord.read() failed with code:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$AudioSystemException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v1

    new-instance v1, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$AudioSystemException;

    const-string v2, "Call to AudioRecord.startRecording() failed."

    invoke-direct {v1, v2}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$AudioSystemException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    if-lez v3, :cond_9

    add-int/2addr v1, v3

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->o:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v3}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->w(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v3

    if-lt v1, v3, :cond_6

    :cond_9
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    return-void
.end method

.method public final handleMessage(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 12

    const/4 v11, 0x1

    const/4 v1, 0x0

    const/4 v10, 0x0

    check-cast p1, [Ljava/lang/Object;

    aget-object v0, p1, v10

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->d()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->k:Z

    if-nez v0, :cond_0

    iput-boolean v11, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->k:Z

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->o:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->z(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM;->resetEndpointingDetection()V

    iput-boolean v10, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->l:Z

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->g:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$EndPointerStartedCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->g:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$EndPointerStartedCallback;

    invoke-interface {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$EndPointerStartedCallback;->endPointerStartedCallback(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    aget-object v0, p1, v10

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->e()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v0, v2, :cond_2

    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->k:Z

    if-eqz v0, :cond_0

    iput-boolean v10, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->k:Z

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->h:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$EndPointerStoppedCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->h:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$EndPointerStoppedCallback;

    invoke-interface {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$EndPointerStoppedCallback;->endPointerStoppedCallback(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    aget-object v0, p1, v10

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->f()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v0, v2, :cond_0

    aget-object v0, p1, v11

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v0, 0x2

    aget-object v0, p1, v0

    iget-boolean v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->c:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->o:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v2}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->i(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$CodecType;

    move-result-object v2

    sget-object v3, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$CodecType;->SPEEX:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$CodecType;

    if-ne v2, v3, :cond_d

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->o:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v2}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->y(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v2

    new-array v2, v2, [B

    iget-boolean v3, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->c:Z

    if-eqz v3, :cond_0

    check-cast v0, [S

    if-gez v4, :cond_3

    new-instance v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$AudioSystemException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Call to AudioRecord.read() failed with code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$AudioSystemException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->a(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$AudioSystemException;)V

    goto :goto_0

    :cond_3
    if-nez v4, :cond_4

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string v1, "AudioRecorder has no audio."

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_4
    sget-object v3, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$EpType;->DETECT_NOTHING:Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$EpType;

    sget-object v5, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->speexEncodeLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-boolean v6, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->c:Z

    if-nez v6, :cond_5

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0

    :cond_5
    :try_start_1
    iget-object v6, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->o:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v6}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->y(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v6

    invoke-static {v0, v2, v6}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->encodeSpeex([S[BI)I

    move-result v6

    iget-boolean v7, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->k:Z

    if-eqz v7, :cond_12

    iget-boolean v7, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->l:Z

    if-nez v7, :cond_12

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->o:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v3}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->z(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM;->detectEndPointing()Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$EpType;

    move-result-object v3

    move-object v7, v3

    :goto_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gez v6, :cond_6

    new-instance v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$AudioSystemException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Call to encodeSpeex() failed with code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->speexCodeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$AudioSystemException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->a(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$AudioSystemException;)V

    goto/16 :goto_0

    :cond_6
    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "RECORDING: Sample #"

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->n:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->n:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ". Got "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " shorts from recorder, sending "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " SPEEX vocoded bytes. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_7
    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v3}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_8

    sget-object v3, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$EpType;->SPEECH_END:Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$EpType;

    if-ne v7, v3, :cond_a

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string v4, "ENDPOINTING SPEECH_END"

    invoke-virtual {v3, v4}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_8
    :goto_2
    const/high16 v3, -0x40800000    # -1.0f

    iget-object v4, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->o:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v4}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->A(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->a([S)F

    move-result v0

    const/high16 v3, 0x42b40000    # 90.0f

    add-float/2addr v0, v3

    float-to-long v4, v0

    long-to-float v0, v4

    move v5, v0

    :goto_3
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->d:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$AudioCallback;

    new-instance v3, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$IntegerMutable;

    invoke-direct {v3, v10}, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$IntegerMutable;-><init>(I)V

    new-instance v4, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$IntegerMutable;

    invoke-direct {v4, v6}, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$IntegerMutable;-><init>(I)V

    const/4 v6, 0x0

    cmpg-float v6, v5, v6

    if-gez v6, :cond_b

    move-object v5, v1

    :goto_4
    iget-object v6, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->m:Ljava/lang/Object;

    invoke-interface/range {v0 .. v6}, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$AudioCallback;->audioCallback([BLjava/lang/Object;Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$IntegerMutable;Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$IntegerMutable;Ljava/lang/Float;Ljava/lang/Object;)V

    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$EpType;->SPEECH_END:Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$EpType;

    if-ne v7, v0, :cond_9

    iput-boolean v11, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->l:Z

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->o:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->B(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->i:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$StopCallback;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->e:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$EndOfSpeechCallback;

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->m:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->a(Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$StopCallback;Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$EndOfSpeechCallback;Ljava/lang/Object;)V

    :cond_9
    :goto_5
    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$EpType;->SPEECH_START:Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$EpType;

    if-ne v7, v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->f:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$StartOfSpeechCallback;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->m:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$StartOfSpeechCallback;->startOfSpeechCallback(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_a
    sget-object v3, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$EpType;->SPEECH_START:Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$EpType;

    if-ne v7, v3, :cond_8

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string v4, "ENDPOINTING SPEECH_START"

    invoke-virtual {v3, v4}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    goto :goto_2

    :cond_b
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    goto :goto_4

    :cond_c
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->e:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$EndOfSpeechCallback;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->e:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$EndOfSpeechCallback;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->m:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$EndOfSpeechCallback;->endOfSpeechCallback(Ljava/lang/Object;)V

    goto :goto_5

    :cond_d
    iget-boolean v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->c:Z

    if-eqz v2, :cond_0

    move-object v3, v0

    check-cast v3, [B

    if-gez v4, :cond_e

    new-instance v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$AudioSystemException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Call to AudioRecord.read() failed with code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$AudioSystemException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->a(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$AudioSystemException;)V

    goto/16 :goto_0

    :cond_e
    if-nez v4, :cond_f

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string v1, "AudioRecorder has no audio."

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_f
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "RECORDING: Sample #"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->n:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->n:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ". Sending "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " bytes from recorder."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_10
    new-instance v5, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$IntegerMutable;

    invoke-direct {v5, v4}, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$IntegerMutable;-><init>(I)V

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->d:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$AudioCallback;

    new-instance v6, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$IntegerMutable;

    invoke-direct {v6, v10}, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$IntegerMutable;-><init>(I)V

    iget-object v8, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->m:Ljava/lang/Object;

    move-object v4, v1

    move-object v7, v1

    invoke-interface/range {v2 .. v8}, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$AudioCallback;->audioCallback([BLjava/lang/Object;Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$IntegerMutable;Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$IntegerMutable;Ljava/lang/Float;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_11
    move v5, v3

    goto/16 :goto_3

    :cond_12
    move-object v7, v3

    goto/16 :goto_1
.end method

.method public final onMarkerReached(Landroid/media/AudioRecord;)V
    .locals 0

    return-void
.end method

.method public final onPeriodicNotification(Landroid/media/AudioRecord;)V
    .locals 7

    const/4 v5, -0x2

    const/4 v4, -0x3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->o:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v1}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->i(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$CodecType;

    move-result-object v1

    sget-object v2, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$CodecType;->SPEEX:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$CodecType;

    if-ne v1, v2, :cond_3

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->c()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->c:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->o:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v2}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->w(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v2

    new-array v2, v2, [S

    :cond_0
    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->o:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v3}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->w(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {p1, v2, v0, v3}, Landroid/media/AudioRecord;->read([SII)I

    move-result v3

    if-eq v3, v4, :cond_1

    if-eq v3, v5, :cond_1

    if-lez v3, :cond_1

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->o:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v3}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->w(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v3

    if-lt v0, v3, :cond_0

    :cond_1
    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->o:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v3}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->p(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->f()Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    const/4 v0, 0x2

    aput-object v2, v4, v0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->o:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->p(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->getMyAddr()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->o:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v2}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->p(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    move-result-object v2

    invoke-interface {v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->getVRAddr()[Ljava/lang/Object;

    move-result-object v2

    const/4 v5, 0x0

    aget-object v2, v2, v5

    invoke-interface {v3, v4, p0, v0, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->send(Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageHandler;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_3
    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->c()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_1
    iget-boolean v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->c:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->o:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v2}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->x(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v2

    new-array v2, v2, [B

    :cond_4
    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->o:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v3}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->x(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {p1, v2, v0, v3}, Landroid/media/AudioRecord;->read([BII)I

    move-result v3

    if-eq v3, v4, :cond_5

    if-eq v3, v5, :cond_5

    if-lez v3, :cond_5

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->o:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v3}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->x(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v3

    if-lt v0, v3, :cond_4

    :cond_5
    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->o:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v3}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->p(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->f()Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    const/4 v0, 0x2

    aput-object v2, v4, v0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->o:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->p(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->getMyAddr()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->o:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v2}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->p(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;

    move-result-object v2

    invoke-interface {v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->getVRAddr()[Ljava/lang/Object;

    move-result-object v2

    const/4 v5, 0x0

    aget-object v2, v2, v5

    invoke-interface {v3, v4, p0, v0, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;->send(Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageHandler;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method
