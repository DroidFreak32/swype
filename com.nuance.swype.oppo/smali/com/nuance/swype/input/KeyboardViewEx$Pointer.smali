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

.field public eventTime:J

.field isTraceDetected:Z

.field public pointerId:I

.field pressedKeyIndex:I

.field prevIndex:I

.field final synthetic this$0:Lcom/nuance/swype/input/KeyboardViewEx;

.field final tracePoints:Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

.field wasPressed:Z


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/KeyboardViewEx;I)V
    .locals 2
    .param p2, "pointerId"    # I

    .prologue
    const/4 v0, -0x1

    .line 397
    iput-object p1, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->this$0:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    iput v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->currentIndex:I

    .line 389
    iput v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->prevIndex:I

    .line 395
    new-instance v0, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->tracePoints:Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    .line 398
    iput p2, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->pointerId:I

    .line 399
    return-void
.end method

.method public constructor <init>(Lcom/nuance/swype/input/KeyboardViewEx;Lcom/nuance/swype/input/KeyboardViewEx$Pointer;)V
    .locals 3
    .param p2, "referencePointer"    # Lcom/nuance/swype/input/KeyboardViewEx$Pointer;

    .prologue
    const/4 v0, -0x1

    .line 401
    iput-object p1, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->this$0:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    iput v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->currentIndex:I

    .line 389
    iput v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->prevIndex:I

    .line 395
    new-instance v0, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->tracePoints:Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    .line 402
    iget v0, p2, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->pointerId:I

    iput v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->pointerId:I

    .line 403
    iget v0, p2, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->currentIndex:I

    iput v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->currentIndex:I

    .line 404
    iget v0, p2, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->prevIndex:I

    iput v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->prevIndex:I

    .line 405
    iget-wide v0, p2, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->eventTime:J

    iput-wide v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->eventTime:J

    .line 406
    iget-boolean v0, p2, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->wasPressed:Z

    iput-boolean v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->wasPressed:Z

    .line 407
    iget-boolean v0, p2, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->isTraceDetected:Z

    iput-boolean v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->isTraceDetected:Z

    .line 408
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->tracePoints:Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    invoke-virtual {p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getPoints()Ljava/util/List;

    move-result-object v1

    iget-object v2, p2, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->tracePoints:Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->getTimes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->reset(Ljava/util/List;Ljava/util/List;)V

    .line 409
    return-void
.end method

.method static synthetic access$600(Lcom/nuance/swype/input/KeyboardViewEx$Pointer;Landroid/view/MotionEvent;)I
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 386
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getCurrentKeyIndex(Landroid/view/MotionEvent;)I

    move-result v0

    return v0
.end method

.method private getCurrentKeyIndex(Landroid/view/MotionEvent;)I
    .locals 4
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 492
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getCurrentLocation()Landroid/graphics/Point;

    move-result-object v0

    .line 493
    .local v0, "pt":Landroid/graphics/Point;
    if-eqz v0, :cond_0

    .line 494
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->this$0:Lcom/nuance/swype/input/KeyboardViewEx;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyIndices(II)I

    move-result v1

    .line 499
    :goto_0
    return v1

    .line 497
    :cond_0
    sget-object v1, Lcom/nuance/swype/input/KeyboardViewEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v2, "getCurrentKeyIndex returns null"

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->i(Ljava/lang/Object;)V

    .line 499
    const/4 v1, -0x1

    goto :goto_0
.end method


# virtual methods
.method public add(Landroid/graphics/Point;J)V
    .locals 2
    .param p1, "pt"    # Landroid/graphics/Point;
    .param p2, "time"    # J

    .prologue
    .line 548
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->tracePoints:Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->add(Landroid/graphics/Point;J)Z

    .line 549
    return-void
.end method

.method clear()V
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->tracePoints:Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->clear()V

    .line 437
    return-void
.end method

.method public get(I)Landroid/graphics/Point;
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 440
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->tracePoints:Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->get(I)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentKeyIndex()I
    .locals 1

    .prologue
    .line 503
    iget v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->currentIndex:I

    return v0
.end method

.method public getCurrentLocation()Landroid/graphics/Point;
    .locals 2

    .prologue
    .line 526
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->tracePoints:Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->tracePoints:Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->tracePoints:Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->get(I)Landroid/graphics/Point;

    move-result-object v0

    .line 532
    :goto_0
    return-object v0

    .line 530
    :cond_0
    sget-object v0, Lcom/nuance/swype/input/KeyboardViewEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "getCurrentLocation returns null"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->i(Ljava/lang/Object;)V

    .line 532
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPointerId()I
    .locals 1

    .prologue
    .line 553
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
    .line 428
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->tracePoints:Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->getPoints()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPressedKeyIndex()I
    .locals 1

    .prologue
    .line 540
    iget v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->pressedKeyIndex:I

    return v0
.end method

.method public getPressedKeyLocation()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 544
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getStartLocation()Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public getStartLocation()Landroid/graphics/Point;
    .locals 2

    .prologue
    .line 518
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->tracePoints:Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->tracePoints:Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->get(I)Landroid/graphics/Point;

    move-result-object v0

    .line 522
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 432
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->tracePoints:Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->getTimes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method isMovedToDifferentKey(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 536
    iget v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->prevIndex:I

    iget v1, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->currentIndex:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isPressed()Z
    .locals 1

    .prologue
    .line 452
    iget-boolean v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->wasPressed:Z

    return v0
.end method

.method public isTraceDetected()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 507
    iget-boolean v4, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->isTraceDetected:Z

    if-nez v4, :cond_0

    .line 508
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->tracePoints:Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->size()I

    move-result v4

    if-le v4, v2, :cond_0

    .line 509
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->tracePoints:Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    invoke-virtual {v4, v3}, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->get(I)Landroid/graphics/Point;

    move-result-object v0

    .line 510
    .local v0, "pt1":Landroid/graphics/Point;
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->tracePoints:Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->tracePoints:Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    invoke-virtual {v5}, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->get(I)Landroid/graphics/Point;

    move-result-object v1

    .line 511
    .local v1, "pt2":Landroid/graphics/Point;
    invoke-static {v0, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->distance(Landroid/graphics/Point;Landroid/graphics/Point;)I

    move-result v4

    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->this$0:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-static {v5}, Lcom/nuance/swype/input/KeyboardViewEx;->access$300(Lcom/nuance/swype/input/KeyboardViewEx;)I

    move-result v5

    if-le v4, v5, :cond_1

    :goto_0
    iput-boolean v2, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->isTraceDetected:Z

    .line 514
    .end local v0    # "pt1":Landroid/graphics/Point;
    .end local v1    # "pt2":Landroid/graphics/Point;
    :cond_0
    iget-boolean v2, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->isTraceDetected:Z

    return v2

    .restart local v0    # "pt1":Landroid/graphics/Point;
    .restart local v1    # "pt2":Landroid/graphics/Point;
    :cond_1
    move v2, v3

    .line 511
    goto :goto_0
.end method

.method public move(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, -0x1

    .line 471
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getCurrentKeyIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 472
    .local v0, "index":I
    iget v1, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->currentIndex:I

    if-eq v0, v1, :cond_0

    if-eq v0, v2, :cond_0

    .line 473
    iget v1, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->currentIndex:I

    iput v1, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->prevIndex:I

    .line 474
    iput v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->currentIndex:I

    .line 475
    iget v1, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->prevIndex:I

    if-eq v1, v2, :cond_0

    .line 476
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->this$0:Lcom/nuance/swype/input/KeyboardViewEx;

    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->this$0:Lcom/nuance/swype/input/KeyboardViewEx;

    iget-object v2, v2, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    iget v3, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->prevIndex:I

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/nuance/swype/input/KeyboardViewEx;->access$200(Lcom/nuance/swype/input/KeyboardViewEx;[Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V

    .line 480
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->this$0:Lcom/nuance/swype/input/KeyboardViewEx;

    iget v2, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->currentIndex:I

    sget-object v3, Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;->Released:Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;

    invoke-static {v1, v2, v3}, Lcom/nuance/swype/input/KeyboardViewEx;->access$100(Lcom/nuance/swype/input/KeyboardViewEx;ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I

    .line 481
    return-void
.end method

.method public pathSize()I
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->tracePoints:Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->size()I

    move-result v0

    return v0
.end method

.method public press(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 412
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getCurrentKeyIndex(Landroid/view/MotionEvent;)I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->currentIndex:I

    .line 413
    iget v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->currentIndex:I

    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->this$0:Lcom/nuance/swype/input/KeyboardViewEx;

    iget-object v1, v1, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 414
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->this$0:Lcom/nuance/swype/input/KeyboardViewEx;

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->currentIndex:I

    .line 417
    :cond_0
    iget v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->currentIndex:I

    iput v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->pressedKeyIndex:I

    .line 418
    iget v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->currentIndex:I

    iput v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->prevIndex:I

    .line 419
    iget v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->currentIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 420
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->this$0:Lcom/nuance/swype/input/KeyboardViewEx;

    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->this$0:Lcom/nuance/swype/input/KeyboardViewEx;

    iget-object v1, v1, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    iget v2, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->currentIndex:I

    invoke-static {v0, v1, v2}, Lcom/nuance/swype/input/KeyboardViewEx;->access$000(Lcom/nuance/swype/input/KeyboardViewEx;[Lcom/nuance/swype/input/KeyboardEx$Key;I)V

    .line 422
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->wasPressed:Z

    .line 423
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->this$0:Lcom/nuance/swype/input/KeyboardViewEx;

    iget v1, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->currentIndex:I

    sget-object v2, Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;->Pressed:Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;

    invoke-static {v0, v1, v2}, Lcom/nuance/swype/input/KeyboardViewEx;->access$100(Lcom/nuance/swype/input/KeyboardViewEx;ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I

    .line 424
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->eventTime:J

    .line 425
    return-void
.end method

.method public release(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 484
    iget v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->currentIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 485
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
    invoke-static {v1, v2, v3, v0}, Lcom/nuance/swype/input/KeyboardViewEx;->access$200(Lcom/nuance/swype/input/KeyboardViewEx;[Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V

    .line 487
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->reset()V

    .line 488
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->eventTime:J

    .line 489
    return-void

    .line 485
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 456
    iget v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->currentIndex:I

    if-eq v0, v3, :cond_0

    .line 457
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->this$0:Lcom/nuance/swype/input/KeyboardViewEx;

    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->this$0:Lcom/nuance/swype/input/KeyboardViewEx;

    iget-object v1, v1, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    iget v2, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->currentIndex:I

    invoke-static {v0, v1, v2, v4}, Lcom/nuance/swype/input/KeyboardViewEx;->access$200(Lcom/nuance/swype/input/KeyboardViewEx;[Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->this$0:Lcom/nuance/swype/input/KeyboardViewEx;

    iget v1, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->currentIndex:I

    sget-object v2, Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;->Released:Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;

    invoke-static {v0, v1, v2}, Lcom/nuance/swype/input/KeyboardViewEx;->access$100(Lcom/nuance/swype/input/KeyboardViewEx;ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I

    .line 461
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->eventTime:J

    .line 462
    iput-boolean v4, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->wasPressed:Z

    .line 463
    iput v3, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->currentIndex:I

    .line 464
    iput v3, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->prevIndex:I

    .line 465
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->tracePoints:Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->clear()V

    .line 466
    iput-boolean v4, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->isTraceDetected:Z

    .line 467
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->this$0:Lcom/nuance/swype/input/KeyboardViewEx;

    sget-object v1, Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;->Released:Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;

    invoke-static {v0, v3, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->access$100(Lcom/nuance/swype/input/KeyboardViewEx;ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I

    .line 468
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->tracePoints:Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->size()I

    move-result v0

    return v0
.end method
