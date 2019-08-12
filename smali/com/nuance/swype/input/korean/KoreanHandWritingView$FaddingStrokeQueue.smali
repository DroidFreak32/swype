.class Lcom/nuance/swype/input/korean/KoreanHandWritingView$FaddingStrokeQueue;
.super Ljava/lang/Object;
.source "KoreanHandWritingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/korean/KoreanHandWritingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FaddingStrokeQueue"
.end annotation


# static fields
.field private static final MAX_QUEUE_CAPACITY:I = 0x20


# instance fields
.field mFaddingStrokes:[Lcom/nuance/swype/input/korean/KoreanHandWritingView$FadingStroke;

.field mFaddingStrokesCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/korean/KoreanHandWritingView$FadingStroke;",
            ">;"
        }
    .end annotation
.end field

.field mFadingQueueSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "penColor"    # I

    .prologue
    const/16 v3, 0x20

    .line 429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 425
    new-array v1, v3, [Lcom/nuance/swype/input/korean/KoreanHandWritingView$FadingStroke;

    iput-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView$FaddingStrokeQueue;->mFaddingStrokes:[Lcom/nuance/swype/input/korean/KoreanHandWritingView$FadingStroke;

    .line 426
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView$FaddingStrokeQueue;->mFaddingStrokesCache:Ljava/util/List;

    .line 430
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 431
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView$FaddingStrokeQueue;->mFaddingStrokesCache:Ljava/util/List;

    new-instance v2, Lcom/nuance/swype/input/korean/KoreanHandWritingView$FadingStroke;

    invoke-direct {v2, p1, p2}, Lcom/nuance/swype/input/korean/KoreanHandWritingView$FadingStroke;-><init>(Landroid/content/Context;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 434
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView$FaddingStrokeQueue;->mFadingQueueSize:I

    .line 435
    return-void
.end method

.method private removeEnd()V
    .locals 5

    .prologue
    .line 487
    iget v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView$FaddingStrokeQueue;->mFadingQueueSize:I

    if-lez v2, :cond_1

    .line 488
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView$FaddingStrokeQueue;->mFaddingStrokes:[Lcom/nuance/swype/input/korean/KoreanHandWritingView$FadingStroke;

    const/4 v3, 0x0

    aget-object v0, v2, v3

    .line 489
    .local v0, "recycleStroke":Lcom/nuance/swype/input/korean/KoreanHandWritingView$FadingStroke;
    const/4 v1, 0x0

    .local v1, "start":I
    :goto_0
    iget v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView$FaddingStrokeQueue;->mFadingQueueSize:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 490
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView$FaddingStrokeQueue;->mFaddingStrokes:[Lcom/nuance/swype/input/korean/KoreanHandWritingView$FadingStroke;

    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView$FaddingStrokeQueue;->mFaddingStrokes:[Lcom/nuance/swype/input/korean/KoreanHandWritingView$FadingStroke;

    add-int/lit8 v4, v1, 0x1

    aget-object v3, v3, v4

    aput-object v3, v2, v1

    .line 489
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 493
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView$FaddingStrokeQueue;->mFaddingStrokesCache:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 494
    iget v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView$FaddingStrokeQueue;->mFadingQueueSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView$FaddingStrokeQueue;->mFadingQueueSize:I

    .line 496
    .end local v0    # "recycleStroke":Lcom/nuance/swype/input/korean/KoreanHandWritingView$FadingStroke;
    .end local v1    # "start":I
    :cond_1
    return-void
.end method


# virtual methods
.method public add(Landroid/graphics/Path;)V
    .locals 3
    .param p1, "path"    # Landroid/graphics/Path;

    .prologue
    .line 439
    iget v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView$FaddingStrokeQueue;->mFadingQueueSize:I

    const/16 v2, 0x20

    if-lt v1, v2, :cond_0

    .line 440
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingView$FaddingStrokeQueue;->removeEnd()V

    .line 443
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView$FaddingStrokeQueue;->mFaddingStrokesCache:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 444
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView$FaddingStrokeQueue;->mFaddingStrokesCache:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/korean/KoreanHandWritingView$FadingStroke;

    .line 445
    .local v0, "stroke":Lcom/nuance/swype/input/korean/KoreanHandWritingView$FadingStroke;
    invoke-virtual {v0}, Lcom/nuance/swype/input/korean/KoreanHandWritingView$FadingStroke;->resetAlpha()V

    .line 446
    iget-object v1, v0, Lcom/nuance/swype/input/korean/KoreanHandWritingView$FadingStroke;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 447
    iget-object v1, v0, Lcom/nuance/swype/input/korean/KoreanHandWritingView$FadingStroke;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1, p1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 448
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView$FaddingStrokeQueue;->mFaddingStrokes:[Lcom/nuance/swype/input/korean/KoreanHandWritingView$FadingStroke;

    iget v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView$FaddingStrokeQueue;->mFadingQueueSize:I

    aput-object v0, v1, v2

    .line 449
    iget v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView$FaddingStrokeQueue;->mFadingQueueSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView$FaddingStrokeQueue;->mFadingQueueSize:I

    .line 453
    .end local v0    # "stroke":Lcom/nuance/swype/input/korean/KoreanHandWritingView$FadingStroke;
    :goto_0
    return-void

    .line 451
    :cond_1
    invoke-static {}, Lcom/nuance/swype/util/LogManager;->getLog()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v1

    const-string v2, "FadingQueue is empty!"

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 478
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView$FaddingStrokeQueue;->mFadingQueueSize:I

    if-ge v0, v1, :cond_0

    .line 479
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView$FaddingStrokeQueue;->mFaddingStrokesCache:Ljava/util/List;

    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView$FaddingStrokeQueue;->mFaddingStrokes:[Lcom/nuance/swype/input/korean/KoreanHandWritingView$FadingStroke;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 478
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 482
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView$FaddingStrokeQueue;->mFadingQueueSize:I

    .line 483
    return-void
.end method

.method draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 457
    iget v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView$FaddingStrokeQueue;->mFadingQueueSize:I

    if-lez v1, :cond_0

    .line 458
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView$FaddingStrokeQueue;->mFadingQueueSize:I

    if-ge v0, v1, :cond_0

    .line 459
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView$FaddingStrokeQueue;->mFaddingStrokes:[Lcom/nuance/swype/input/korean/KoreanHandWritingView$FadingStroke;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/nuance/swype/input/korean/KoreanHandWritingView$FadingStroke;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView$FaddingStrokeQueue;->mFaddingStrokes:[Lcom/nuance/swype/input/korean/KoreanHandWritingView$FadingStroke;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/nuance/swype/input/korean/KoreanHandWritingView$FadingStroke;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 458
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 462
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public reduceAlpha()V
    .locals 3

    .prologue
    .line 465
    iget v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView$FaddingStrokeQueue;->mFadingQueueSize:I

    if-lez v1, :cond_1

    .line 466
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView$FaddingStrokeQueue;->mFadingQueueSize:I

    if-ge v0, v1, :cond_0

    .line 467
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView$FaddingStrokeQueue;->mFaddingStrokes:[Lcom/nuance/swype/input/korean/KoreanHandWritingView$FadingStroke;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/nuance/swype/input/korean/KoreanHandWritingView$FadingStroke;->decreaseAlpha()V

    .line 466
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 470
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingView$FaddingStrokeQueue;->mFaddingStrokes:[Lcom/nuance/swype/input/korean/KoreanHandWritingView$FadingStroke;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget v1, v1, Lcom/nuance/swype/input/korean/KoreanHandWritingView$FadingStroke;->mCurrentAlpha:I

    if-nez v1, :cond_1

    .line 471
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingView$FaddingStrokeQueue;->removeEnd()V

    .line 474
    .end local v0    # "i":I
    :cond_1
    return-void
.end method
