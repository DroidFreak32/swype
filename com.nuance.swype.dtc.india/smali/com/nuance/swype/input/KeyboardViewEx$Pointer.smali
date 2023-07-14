.class public Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
.super Ljava/lang/Object;
.source "KeyboardViewEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/KeyboardViewEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Pointer"
.end annotation


# instance fields
.field currentIndex:I

.field fading:I

.field isTraceDetected:Z

.field public pointerId:I

.field radius:F

.field final renderingTracePoints:Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

.field final synthetic this$0:Lcom/nuance/swype/input/KeyboardViewEx;

.field final tracePoints:Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

.field wasPressed:Z


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/KeyboardViewEx;I)V
    .locals 2
    .param p1, "this$0"    # Lcom/nuance/swype/input/KeyboardViewEx;
    .param p2, "pointerId"    # I

    .prologue
    const/16 v1, 0x1f4

    .line 432
    iput-object p1, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->this$0:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 420
    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->currentIndex:I

    .line 424
    const/16 v0, 0xff

    iput v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->fading:I

    .line 428
    new-instance v0, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->tracePoints:Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    .line 430
    new-instance v0, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->renderingTracePoints:Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    .line 433
    iput p2, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->pointerId:I

    .line 434
    return-void
.end method

.method public constructor <init>(Lcom/nuance/swype/input/KeyboardViewEx;Lcom/nuance/swype/input/KeyboardViewEx$Pointer;)V
    .locals 3
    .param p1, "this$0"    # Lcom/nuance/swype/input/KeyboardViewEx;
    .param p2, "referencePointer"    # Lcom/nuance/swype/input/KeyboardViewEx$Pointer;

    .prologue
    const/16 v1, 0x1f4

    .line 436
    iput-object p1, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->this$0:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 420
    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->currentIndex:I

    .line 424
    const/16 v0, 0xff

    iput v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->fading:I

    .line 428
    new-instance v0, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->tracePoints:Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    .line 430
    new-instance v0, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->renderingTracePoints:Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    .line 437
    iget v0, p2, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->pointerId:I

    iput v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->pointerId:I

    .line 438
    iget-boolean v0, p2, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->isTraceDetected:Z

    iput-boolean v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->isTraceDetected:Z

    .line 439
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->tracePoints:Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    invoke-virtual {p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getPoints()Ljava/util/List;

    move-result-object v1

    iget-object v2, p2, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->tracePoints:Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->getTimes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->reset(Ljava/util/List;Ljava/util/List;)V

    .line 440
    iget v0, p2, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->currentIndex:I

    iput v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->currentIndex:I

    .line 441
    iget-boolean v0, p2, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->wasPressed:Z

    iput-boolean v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->wasPressed:Z

    .line 442
    return-void
.end method

.method private getCurrentKeyIndex(Landroid/view/MotionEvent;)I
    .locals 4
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 509
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getCurrentLocation()Landroid/graphics/Point;

    move-result-object v0

    .line 510
    .local v0, "pt":Landroid/graphics/Point;
    if-eqz v0, :cond_0

    .line 511
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->this$0:Lcom/nuance/swype/input/KeyboardViewEx;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyIndices(II)I

    move-result v1

    .line 516
    :goto_0
    return v1

    .line 514
    :cond_0
    sget-object v1, Lcom/nuance/swype/input/KeyboardViewEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v2, "getCurrentKeyIndex returns null"

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->i(Ljava/lang/Object;)V

    .line 516
    const/4 v1, -0x1

    goto :goto_0
.end method


# virtual methods
.method public add(Landroid/graphics/Point;J)V
    .locals 2
    .param p1, "pt"    # Landroid/graphics/Point;
    .param p2, "time"    # J

    .prologue
    .line 542
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->tracePoints:Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->add(Landroid/graphics/Point;J)Z

    .line 543
    return-void
.end method

.method clear()V
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->tracePoints:Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->clear()V

    .line 468
    return-void
.end method

.method public get(I)Landroid/graphics/Point;
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 471
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->tracePoints:Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->get(I)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentKeyIndex()I
    .locals 1

    .prologue
    .line 520
    iget v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->currentIndex:I

    return v0
.end method

.method public getCurrentLocation()Landroid/graphics/Point;
    .locals 2

    .prologue
    .line 532
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->tracePoints:Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->tracePoints:Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->tracePoints:Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->get(I)Landroid/graphics/Point;

    move-result-object v0

    .line 538
    :goto_0
    return-object v0

    .line 536
    :cond_0
    sget-object v0, Lcom/nuance/swype/input/KeyboardViewEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v1, "getCurrentLocation returns null"

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->i(Ljava/lang/Object;)V

    .line 538
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentTime()J
    .locals 2

    .prologue
    .line 551
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->tracePoints:Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->tracePoints:Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->getEventTime(I)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPointerId()I
    .locals 1

    .prologue
    .line 547
    iget v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->pointerId:I

    return v0
.end method

.method public getPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation

    .prologue
    .line 459
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->tracePoints:Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->getPoints()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTimes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 463
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->tracePoints:Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->getTimes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method isPressed()Z
    .locals 1

    .prologue
    .line 483
    iget-boolean v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->wasPressed:Z

    return v0
.end method

.method public isTraceDetected()Z
    .locals 1

    .prologue
    .line 528
    iget-boolean v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->isTraceDetected:Z

    return v0
.end method

.method public pathSize()I
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->tracePoints:Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->size()I

    move-result v0

    return v0
.end method

.method public press(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 445
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getCurrentKeyIndex(Landroid/view/MotionEvent;)I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->currentIndex:I

    .line 446
    iget v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->currentIndex:I

    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->this$0:Lcom/nuance/swype/input/KeyboardViewEx;

    iget-object v1, v1, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 447
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->this$0:Lcom/nuance/swype/input/KeyboardViewEx;

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->currentIndex:I

    .line 450
    :cond_0
    iget v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->currentIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 451
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->this$0:Lcom/nuance/swype/input/KeyboardViewEx;

    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->this$0:Lcom/nuance/swype/input/KeyboardViewEx;

    iget-object v1, v1, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    iget v2, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->currentIndex:I

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/KeyboardViewEx;->pressKey([Lcom/nuance/swype/input/KeyboardEx$Key;I)V

    .line 453
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->wasPressed:Z

    .line 454
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->this$0:Lcom/nuance/swype/input/KeyboardViewEx;

    iget v1, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->currentIndex:I

    sget-object v2, Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;->Pressed:Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/KeyboardViewEx;->setKeyState(ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I

    .line 455
    return-void
.end method

.method public release(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 502
    iget v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->currentIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 503
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->this$0:Lcom/nuance/swype/input/KeyboardViewEx;

    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->this$0:Lcom/nuance/swype/input/KeyboardViewEx;

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    iget v3, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->currentIndex:I

    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->this$0:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardViewEx;->isWriting()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v3, v0}, Lcom/nuance/swype/input/KeyboardViewEx;->releaseKey([Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V

    .line 505
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->reset()V

    .line 506
    return-void

    .line 503
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 488
    iget v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->currentIndex:I

    if-eq v0, v3, :cond_0

    .line 489
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->this$0:Lcom/nuance/swype/input/KeyboardViewEx;

    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->this$0:Lcom/nuance/swype/input/KeyboardViewEx;

    iget-object v1, v1, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    iget v2, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->currentIndex:I

    invoke-virtual {v0, v1, v2, v4}, Lcom/nuance/swype/input/KeyboardViewEx;->releaseKey([Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V

    .line 491
    :cond_0
    const/16 v0, 0xff

    iput v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->fading:I

    .line 492
    const/high16 v0, 0x41880000    # 17.0f

    iput v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->radius:F

    .line 493
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->tracePoints:Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->clear()V

    .line 494
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->renderingTracePoints:Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->clear()V

    .line 495
    iput-boolean v4, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->isTraceDetected:Z

    .line 496
    iput-boolean v4, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->wasPressed:Z

    .line 497
    iput v3, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->currentIndex:I

    .line 498
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->this$0:Lcom/nuance/swype/input/KeyboardViewEx;

    sget-object v1, Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;->Released:Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;

    invoke-virtual {v0, v3, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->setKeyState(ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I

    .line 499
    return-void
.end method

.method public setTraceDetected(Z)V
    .locals 0
    .param p1, "traceDetected"    # Z

    .prologue
    .line 524
    iput-boolean p1, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->isTraceDetected:Z

    .line 525
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->tracePoints:Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->size()I

    move-result v0

    return v0
.end method
