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
    .registers 2
    .param p0, "x0"    # Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;

    .prologue
    .line 280
    iget-object v0, p0, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->drawingLock:Ljava/lang/Object;

    return-object v0
.end method

.method private waitOnPause()V
    .registers 3

    .prologue
    .line 323
    iget-object v1, p0, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->pauseLock:Ljava/lang/Object;

    monitor-enter v1

    .line 324
    :goto_3
    :try_start_3
    iget-boolean v0, p0, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->paused:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_11

    if-eqz v0, :cond_f

    .line 326
    :try_start_7
    iget-object v0, p0, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->pauseLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_c} :catch_d
    .catchall {:try_start_7 .. :try_end_c} :catchall_11

    goto :goto_3

    .line 328
    :catch_d
    move-exception v0

    goto :goto_3

    .line 330
    :cond_f
    :try_start_f
    monitor-exit v1

    return-void

    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_11

    throw v0
.end method


# virtual methods
.method public final run()V
    .registers 13

    .prologue
    .line 335
    .line 1299
    iget-object v7, p0, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->drawingLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1300
    :try_start_3
    new-instance v6, Lcom/nuance/android/gif/GifDecoder;

    invoke-direct {v6}, Lcom/nuance/android/gif/GifDecoder;-><init>()V

    iput-object v6, p0, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->decoder:Lcom/nuance/android/gif/GifDecoder;
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_11a

    .line 1302
    :try_start_a
    iget-object v6, p0, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->decoder:Lcom/nuance/android/gif/GifDecoder;

    iget-object v8, p0, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->gifInputStream:Ljava/io/InputStream;

    iget-object v9, p0, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->gifInputStream:Ljava/io/InputStream;

    invoke-virtual {v9}, Ljava/io/InputStream;->available()I

    move-result v9

    invoke-virtual {v6, v8, v9}, Lcom/nuance/android/gif/GifDecoder;->read(Ljava/io/InputStream;I)I

    .line 1304
    iget-object v6, p0, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->decoder:Lcom/nuance/android/gif/GifDecoder;

    iget v6, v6, Lcom/nuance/android/gif/GifDecoder;->width:I

    if-eqz v6, :cond_23

    iget-object v6, p0, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->decoder:Lcom/nuance/android/gif/GifDecoder;

    iget v6, v6, Lcom/nuance/android/gif/GifDecoder;->height:I

    if-nez v6, :cond_10d

    .line 1305
    :cond_23
    iget-object v6, p0, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->this$0:Lcom/nuance/android/gif/AnimatedGifView;

    const/4 v8, 0x1

    iput v8, v6, Lcom/nuance/android/gif/AnimatedGifView;->imageType:I

    .line 1310
    :goto_28
    iget-object v6, p0, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->this$0:Lcom/nuance/android/gif/AnimatedGifView;

    const/4 v8, 0x2

    iput v8, v6, Lcom/nuance/android/gif/AnimatedGifView;->decodeStatus:I

    .line 1311
    iget-object v6, p0, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->this$0:Lcom/nuance/android/gif/AnimatedGifView;

    iget-object v8, p0, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->decoder:Lcom/nuance/android/gif/GifDecoder;

    invoke-virtual {v8}, Lcom/nuance/android/gif/GifDecoder;->getFrameCount()I

    move-result v8

    # setter for: Lcom/nuance/android/gif/AnimatedGifView;->frameCount:I
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
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_6e} :catch_114
    .catchall {:try_start_a .. :try_end_6e} :catchall_11a

    .line 1319
    :goto_6e
    :try_start_6e
    monitor-exit v7
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_11a

    .line 336
    invoke-direct {p0}, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->waitOnPause()V

    .line 338
    iget-object v6, p0, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->this$0:Lcom/nuance/android/gif/AnimatedGifView;

    # getter for: Lcom/nuance/android/gif/AnimatedGifView;->animationCallback:Lcom/nuance/android/gif/AnimatedGifView$AnimationCallback;
    invoke-static {v6}, Lcom/nuance/android/gif/AnimatedGifView;->access$200(Lcom/nuance/android/gif/AnimatedGifView;)Lcom/nuance/android/gif/AnimatedGifView$AnimationCallback;

    move-result-object v6

    if-eqz v6, :cond_84

    .line 339
    iget-object v6, p0, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->this$0:Lcom/nuance/android/gif/AnimatedGifView;

    new-instance v7, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable$1;

    invoke-direct {v7, p0}, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable$1;-><init>(Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;)V

    invoke-virtual {v6, v7}, Lcom/nuance/android/gif/AnimatedGifView;->post(Ljava/lang/Runnable;)Z

    .line 347
    :cond_84
    invoke-direct {p0}, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->waitOnPause()V

    .line 351
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_88
    iget-boolean v6, p0, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->stopped:Z

    if-nez v6, :cond_12b

    iget-object v6, p0, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->this$0:Lcom/nuance/android/gif/AnimatedGifView;

    # getter for: Lcom/nuance/android/gif/AnimatedGifView;->frameCount:I
    invoke-static {v6}, Lcom/nuance/android/gif/AnimatedGifView;->access$100(Lcom/nuance/android/gif/AnimatedGifView;)I

    move-result v6

    if-ge v1, v6, :cond_12b

    .line 352
    iget-object v6, p0, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->this$0:Lcom/nuance/android/gif/AnimatedGifView;

    # setter for: Lcom/nuance/android/gif/AnimatedGifView;->frameIndex:I
    invoke-static {v6, v1}, Lcom/nuance/android/gif/AnimatedGifView;->access$002(Lcom/nuance/android/gif/AnimatedGifView;I)I

    .line 353
    iget-object v7, p0, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->drawingLock:Ljava/lang/Object;

    monitor-enter v7

    .line 354
    :try_start_9c
    iget-object v6, p0, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->decoder:Lcom/nuance/android/gif/GifDecoder;

    invoke-virtual {v6}, Lcom/nuance/android/gif/GifDecoder;->advance()V

    .line 355
    monitor-exit v7
    :try_end_a2
    .catchall {:try_start_9c .. :try_end_a2} :catchall_11d

    .line 357
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 358
    .local v2, "frameLoadingStartTimer":J
    iget-object v7, p0, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->drawingLock:Ljava/lang/Object;

    monitor-enter v7

    .line 359
    :try_start_a9
    iget-object v6, p0, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->this$0:Lcom/nuance/android/gif/AnimatedGifView;

    # getter for: Lcom/nuance/android/gif/AnimatedGifView;->bitmapFrame:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/nuance/android/gif/AnimatedGifView;->access$400(Lcom/nuance/android/gif/AnimatedGifView;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_ba

    .line 360
    iget-object v6, p0, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->this$0:Lcom/nuance/android/gif/AnimatedGifView;

    # getter for: Lcom/nuance/android/gif/AnimatedGifView;->bitmapFrame:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/nuance/android/gif/AnimatedGifView;->access$400(Lcom/nuance/android/gif/AnimatedGifView;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 362
    :cond_ba
    iget-object v6, p0, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->this$0:Lcom/nuance/android/gif/AnimatedGifView;

    iget-object v8, p0, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->decoder:Lcom/nuance/android/gif/GifDecoder;

    invoke-virtual {v8}, Lcom/nuance/android/gif/GifDecoder;->getNextFrame()Landroid/graphics/Bitmap;

    move-result-object v8

    iget-object v9, p0, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->this$0:Lcom/nuance/android/gif/AnimatedGifView;

    # getter for: Lcom/nuance/android/gif/AnimatedGifView;->width:I
    invoke-static {v9}, Lcom/nuance/android/gif/AnimatedGifView;->access$500(Lcom/nuance/android/gif/AnimatedGifView;)I

    move-result v9

    iget-object v10, p0, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->this$0:Lcom/nuance/android/gif/AnimatedGifView;

    # getter for: Lcom/nuance/android/gif/AnimatedGifView;->height:I
    invoke-static {v10}, Lcom/nuance/android/gif/AnimatedGifView;->access$600(Lcom/nuance/android/gif/AnimatedGifView;)I

    move-result v10

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    # setter for: Lcom/nuance/android/gif/AnimatedGifView;->bitmapFrame:Landroid/graphics/Bitmap;
    invoke-static {v6, v8}, Lcom/nuance/android/gif/AnimatedGifView;->access$402(Lcom/nuance/android/gif/AnimatedGifView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 363
    monitor-exit v7
    :try_end_d7
    .catchall {:try_start_a9 .. :try_end_d7} :catchall_120

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
    :try_start_e6
    iget-object v7, p0, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->frameDelayPause:Ljava/lang/Object;

    monitor-enter v7
    :try_end_e9
    .catch Ljava/lang/InterruptedException; {:try_start_e6 .. :try_end_e9} :catch_126

    .line 370
    :try_start_e9
    iget-boolean v6, p0, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->stopped:Z

    if-nez v6, :cond_105

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
    if-lez v0, :cond_105

    if-lez v1, :cond_105

    .line 373
    iget-object v6, p0, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->frameDelayPause:Ljava/lang/Object;

    int-to-long v8, v0

    invoke-virtual {v6, v8, v9}, Ljava/lang/Object;->wait(J)V

    .line 376
    .end local v0    # "delay":I
    :cond_105
    monitor-exit v7
    :try_end_106
    .catchall {:try_start_e9 .. :try_end_106} :catchall_123

    .line 381
    :goto_106
    invoke-direct {p0}, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->waitOnPause()V

    .line 351
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_88

    .line 1307
    .end local v1    # "i":I
    .end local v2    # "frameLoadingStartTimer":J
    .end local v4    # "frameLoadingStopTimer":J
    :cond_10d
    :try_start_10d
    iget-object v6, p0, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->this$0:Lcom/nuance/android/gif/AnimatedGifView;

    const/4 v8, 0x2

    iput v8, v6, Lcom/nuance/android/gif/AnimatedGifView;->imageType:I
    :try_end_112
    .catch Ljava/io/IOException; {:try_start_10d .. :try_end_112} :catch_114
    .catchall {:try_start_10d .. :try_end_112} :catchall_11a

    goto/16 :goto_28

    .line 1317
    :catch_114
    move-exception v6

    :try_start_115
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_6e

    .line 1319
    :catchall_11a
    move-exception v6

    monitor-exit v7
    :try_end_11c
    .catchall {:try_start_115 .. :try_end_11c} :catchall_11a

    throw v6

    .line 355
    .restart local v1    # "i":I
    :catchall_11d
    move-exception v6

    :try_start_11e
    monitor-exit v7
    :try_end_11f
    .catchall {:try_start_11e .. :try_end_11f} :catchall_11d

    throw v6

    .line 363
    .restart local v2    # "frameLoadingStartTimer":J
    :catchall_120
    move-exception v6

    :try_start_121
    monitor-exit v7
    :try_end_122
    .catchall {:try_start_121 .. :try_end_122} :catchall_120

    throw v6

    .line 376
    .restart local v4    # "frameLoadingStopTimer":J
    :catchall_123
    move-exception v6

    :try_start_124
    monitor-exit v7
    :try_end_125
    .catchall {:try_start_124 .. :try_end_125} :catchall_123

    :try_start_125
    throw v6
    :try_end_126
    .catch Ljava/lang/InterruptedException; {:try_start_125 .. :try_end_126} :catch_126

    .line 378
    :catch_126
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_106

    .line 384
    .end local v2    # "frameLoadingStartTimer":J
    .end local v4    # "frameLoadingStopTimer":J
    :cond_12b
    iget-object v6, p0, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->this$0:Lcom/nuance/android/gif/AnimatedGifView;

    # getter for: Lcom/nuance/android/gif/AnimatedGifView;->animationCallback:Lcom/nuance/android/gif/AnimatedGifView$AnimationCallback;
    invoke-static {v6}, Lcom/nuance/android/gif/AnimatedGifView;->access$200(Lcom/nuance/android/gif/AnimatedGifView;)Lcom/nuance/android/gif/AnimatedGifView$AnimationCallback;

    move-result-object v6

    if-eqz v6, :cond_13c

    .line 385
    iget-object v6, p0, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->this$0:Lcom/nuance/android/gif/AnimatedGifView;

    iget-object v7, p0, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->this$0:Lcom/nuance/android/gif/AnimatedGifView;

    iget-object v7, v7, Lcom/nuance/android/gif/AnimatedGifView;->animationStopped:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Lcom/nuance/android/gif/AnimatedGifView;->post(Ljava/lang/Runnable;)Z

    .line 389
    :cond_13c
    return-void
.end method
