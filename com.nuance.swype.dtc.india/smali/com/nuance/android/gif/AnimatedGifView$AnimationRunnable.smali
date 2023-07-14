.class final Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;
.super Ljava/lang/Object;
.source "AnimatedGifView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/android/gif/AnimatedGifView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationRunnable"
.end annotation


# instance fields
.field private decoder:Lcom/nuance/android/gif/GifDecoder;

.field private final drawingLock:Ljava/lang/Object;

.field private final frameDelayPause:Ljava/lang/Object;

.field private final gifInputStream:Ljava/io/InputStream;

.field private final pauseLock:Ljava/lang/Object;

.field private paused:Z

.field private stopped:Z

.field final synthetic this$0:Lcom/nuance/android/gif/AnimatedGifView;


# direct methods
.method static synthetic access$300(Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;

    .prologue
    .line 280
    iget-object v0, p0, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->drawingLock:Ljava/lang/Object;

    return-object v0
.end method

.method private waitOnPause()V
    .locals 2

    .prologue
    .line 323
    iget-object v1, p0, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->pauseLock:Ljava/lang/Object;

    monitor-enter v1

    .line 324
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->paused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 326
    :try_start_1
    iget-object v0, p0, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->pauseLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 328
    :catch_0
    move-exception v0

    goto :goto_0

    .line 330
    :cond_0
    :try_start_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method


# virtual methods
.method public final run()V
    .locals 12

    .prologue
    .line 335
    .line 1299
    iget-object v7, p0, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->drawingLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1300
    :try_start_0
    new-instance v6, Lcom/nuance/android/gif/GifDecoder;

    invoke-direct {v6}, Lcom/nuance/android/gif/GifDecoder;-><init>()V

    iput-object v6, p0, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->decoder:Lcom/nuance/android/gif/GifDecoder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1302
    :try_start_1
    iget-object v6, p0, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->decoder:Lcom/nuance/android/gif/GifDecoder;

    iget-object v8, p0, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->gifInputStream:Ljava/io/InputStream;

    iget-object v9, p0, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->gifInputStream:Ljava/io/InputStream;

    invoke-virtual {v9}, Ljava/io/InputStream;->available()I

    move-result v9

    invoke-virtual {v6, v8, v9}, Lcom/nuance/android/gif/GifDecoder;->read(Ljava/io/InputStream;I)I

    .line 1304
    iget-object v6, p0, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->decoder:Lcom/nuance/android/gif/GifDecoder;

    iget v6, v6, Lcom/nuance/android/gif/GifDecoder;->width:I

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->decoder:Lcom/nuance/android/gif/GifDecoder;

    iget v6, v6, Lcom/nuance/android/gif/GifDecoder;->height:I

    if-nez v6, :cond_4

    .line 1305
    :cond_0
    iget-object v6, p0, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->this$0:Lcom/nuance/android/gif/AnimatedGifView;

    const/4 v8, 0x1

    iput v8, v6, Lcom/nuance/android/gif/AnimatedGifView;->imageType:I

    .line 1310
    :goto_0
    iget-object v6, p0, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->this$0:Lcom/nuance/android/gif/AnimatedGifView;

    const/4 v8, 0x2

    iput v8, v6, Lcom/nuance/android/gif/AnimatedGifView;->decodeStatus:I

    .line 1311
    iget-object v6, p0, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->this$0:Lcom/nuance/android/gif/AnimatedGifView;

    iget-object v8, p0, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->decoder:Lcom/nuance/android/gif/GifDecoder;

    invoke-virtual {v8}, Lcom/nuance/android/gif/GifDecoder;->getFrameCount()I

    move-result v8

    invoke-static {v6, v8}, Lcom/nuance/android/gif/AnimatedGifView;->access$102(Lcom/nuance/android/gif/AnimatedGifView;I)I

    .line 1313
    sget-object v6, Lcom/nuance/android/gif/AnimatedGifView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "frames: "

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->decoder:Lcom/nuance/android/gif/GifDecoder;

    invoke-virtual {v10}, Lcom/nuance/android/gif/GifDecoder;->getFrameCount()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-interface {v6, v8}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1314
    sget-object v6, Lcom/nuance/android/gif/AnimatedGifView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "runLoop: "

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->decoder:Lcom/nuance/android/gif/GifDecoder;

    invoke-virtual {v10}, Lcom/nuance/android/gif/GifDecoder;->getLoopCount()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-interface {v6, v8}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1319
    :goto_1
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 336
    invoke-direct {p0}, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->waitOnPause()V

    .line 338
    iget-object v6, p0, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->this$0:Lcom/nuance/android/gif/AnimatedGifView;

    invoke-static {v6}, Lcom/nuance/android/gif/AnimatedGifView;->access$200(Lcom/nuance/android/gif/AnimatedGifView;)Lcom/nuance/android/gif/AnimatedGifView$AnimationCallback;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 339
    iget-object v6, p0, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->this$0:Lcom/nuance/android/gif/AnimatedGifView;

    new-instance v7, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable$1;

    invoke-direct {v7, p0}, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable$1;-><init>(Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;)V

    invoke-virtual {v6, v7}, Lcom/nuance/android/gif/AnimatedGifView;->post(Ljava/lang/Runnable;)Z

    .line 347
    :cond_1
    invoke-direct {p0}, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->waitOnPause()V

    .line 351
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-boolean v6, p0, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->stopped:Z

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->this$0:Lcom/nuance/android/gif/AnimatedGifView;

    invoke-static {v6}, Lcom/nuance/android/gif/AnimatedGifView;->access$100(Lcom/nuance/android/gif/AnimatedGifView;)I

    move-result v6

    if-ge v1, v6, :cond_5

    .line 352
    iget-object v6, p0, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->this$0:Lcom/nuance/android/gif/AnimatedGifView;

    invoke-static {v6, v1}, Lcom/nuance/android/gif/AnimatedGifView;->access$002(Lcom/nuance/android/gif/AnimatedGifView;I)I

    .line 353
    iget-object v7, p0, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->drawingLock:Ljava/lang/Object;

    monitor-enter v7

    .line 354
    :try_start_3
    iget-object v6, p0, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->decoder:Lcom/nuance/android/gif/GifDecoder;

    invoke-virtual {v6}, Lcom/nuance/android/gif/GifDecoder;->advance()V

    .line 355
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 357
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 358
    .local v2, "frameLoadingStartTimer":J
    iget-object v7, p0, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->drawingLock:Ljava/lang/Object;

    monitor-enter v7

    .line 359
    :try_start_4
    iget-object v6, p0, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->this$0:Lcom/nuance/android/gif/AnimatedGifView;

    invoke-static {v6}, Lcom/nuance/android/gif/AnimatedGifView;->access$400(Lcom/nuance/android/gif/AnimatedGifView;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 360
    iget-object v6, p0, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->this$0:Lcom/nuance/android/gif/AnimatedGifView;

    invoke-static {v6}, Lcom/nuance/android/gif/AnimatedGifView;->access$400(Lcom/nuance/android/gif/AnimatedGifView;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 362
    :cond_2
    iget-object v6, p0, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->this$0:Lcom/nuance/android/gif/AnimatedGifView;

    iget-object v8, p0, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->decoder:Lcom/nuance/android/gif/GifDecoder;

    invoke-virtual {v8}, Lcom/nuance/android/gif/GifDecoder;->getNextFrame()Landroid/graphics/Bitmap;

    move-result-object v8

    iget-object v9, p0, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->this$0:Lcom/nuance/android/gif/AnimatedGifView;

    invoke-static {v9}, Lcom/nuance/android/gif/AnimatedGifView;->access$500(Lcom/nuance/android/gif/AnimatedGifView;)I

    move-result v9

    iget-object v10, p0, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->this$0:Lcom/nuance/android/gif/AnimatedGifView;

    invoke-static {v10}, Lcom/nuance/android/gif/AnimatedGifView;->access$600(Lcom/nuance/android/gif/AnimatedGifView;)I

    move-result v10

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/nuance/android/gif/AnimatedGifView;->access$402(Lcom/nuance/android/gif/AnimatedGifView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 363
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 364
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v2

    .line 366
    .local v4, "frameLoadingStopTimer":J
    iget-object v6, p0, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->this$0:Lcom/nuance/android/gif/AnimatedGifView;

    iget-object v7, p0, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->this$0:Lcom/nuance/android/gif/AnimatedGifView;

    iget-object v7, v7, Lcom/nuance/android/gif/AnimatedGifView;->frameWillAnimateCallback:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Lcom/nuance/android/gif/AnimatedGifView;->post(Ljava/lang/Runnable;)Z

    .line 369
    :try_start_5
    iget-object v7, p0, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->frameDelayPause:Ljava/lang/Object;

    monitor-enter v7
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1

    .line 370
    :try_start_6
    iget-boolean v6, p0, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->stopped:Z

    if-nez v6, :cond_3

    .line 371
    const/4 v6, 0x0

    iget-object v8, p0, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->decoder:Lcom/nuance/android/gif/GifDecoder;

    invoke-virtual {v8, v1}, Lcom/nuance/android/gif/GifDecoder;->getDelay(I)I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    long-to-int v8, v4

    sub-int v0, v6, v8

    .line 372
    .local v0, "delay":I
    if-lez v0, :cond_3

    if-lez v1, :cond_3

    .line 373
    iget-object v6, p0, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->frameDelayPause:Ljava/lang/Object;

    int-to-long v8, v0

    invoke-virtual {v6, v8, v9}, Ljava/lang/Object;->wait(J)V

    .line 376
    .end local v0    # "delay":I
    :cond_3
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 381
    :goto_3
    invoke-direct {p0}, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->waitOnPause()V

    .line 351
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 1307
    .end local v1    # "i":I
    .end local v2    # "frameLoadingStartTimer":J
    .end local v4    # "frameLoadingStopTimer":J
    :cond_4
    :try_start_7
    iget-object v6, p0, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->this$0:Lcom/nuance/android/gif/AnimatedGifView;

    const/4 v8, 0x2

    iput v8, v6, Lcom/nuance/android/gif/AnimatedGifView;->imageType:I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 1317
    :catch_0
    move-exception v6

    :try_start_8
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 1319
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v6

    .line 355
    .restart local v1    # "i":I
    :catchall_1
    move-exception v6

    :try_start_9
    monitor-exit v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v6

    .line 363
    .restart local v2    # "frameLoadingStartTimer":J
    :catchall_2
    move-exception v6

    :try_start_a
    monitor-exit v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v6

    .line 376
    .restart local v4    # "frameLoadingStopTimer":J
    :catchall_3
    move-exception v6

    :try_start_b
    monitor-exit v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    throw v6
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_1

    .line 378
    :catch_1
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 384
    .end local v2    # "frameLoadingStartTimer":J
    .end local v4    # "frameLoadingStopTimer":J
    :cond_5
    iget-object v6, p0, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->this$0:Lcom/nuance/android/gif/AnimatedGifView;

    invoke-static {v6}, Lcom/nuance/android/gif/AnimatedGifView;->access$200(Lcom/nuance/android/gif/AnimatedGifView;)Lcom/nuance/android/gif/AnimatedGifView$AnimationCallback;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 385
    iget-object v6, p0, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->this$0:Lcom/nuance/android/gif/AnimatedGifView;

    iget-object v7, p0, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->this$0:Lcom/nuance/android/gif/AnimatedGifView;

    iget-object v7, v7, Lcom/nuance/android/gif/AnimatedGifView;->animationStopped:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Lcom/nuance/android/gif/AnimatedGifView;->post(Ljava/lang/Runnable;)Z

    .line 389
    :cond_6
    return-void
.end method
