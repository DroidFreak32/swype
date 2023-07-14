.class Lcom/nuance/swype/input/AlphaHandWritingView$FadingStrokeQueue;
.super Ljava/lang/Object;
.source "AlphaHandWritingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/AlphaHandWritingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FadingStrokeQueue"
.end annotation


# static fields
.field private static final MAX_QUEUE_CAPACITY:I = 0x40


# instance fields
.field mFadingQueueSize:I

.field final mFadingStrokes:[Lcom/nuance/swype/input/AlphaHandWritingView$FadingStroke;

.field final mFadingStrokesCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/AlphaHandWritingView$FadingStroke;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "penColor"    # I

    .prologue
    const/16 v3, 0x40

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    new-array v1, v3, [Lcom/nuance/swype/input/AlphaHandWritingView$FadingStroke;

    iput-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingView$FadingStrokeQueue;->mFadingStrokes:[Lcom/nuance/swype/input/AlphaHandWritingView$FadingStroke;

    .line 243
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingView$FadingStrokeQueue;->mFadingStrokesCache:Ljava/util/List;

    .line 247
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 248
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingView$FadingStrokeQueue;->mFadingStrokesCache:Ljava/util/List;

    new-instance v2, Lcom/nuance/swype/input/AlphaHandWritingView$FadingStroke;

    invoke-direct {v2, p1, p2}, Lcom/nuance/swype/input/AlphaHandWritingView$FadingStroke;-><init>(Landroid/content/Context;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 251
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/nuance/swype/input/AlphaHandWritingView$FadingStrokeQueue;->mFadingQueueSize:I

    .line 252
    return-void
.end method

.method private removeEnd()V
    .locals 5

    .prologue
    .line 303
    iget v2, p0, Lcom/nuance/swype/input/AlphaHandWritingView$FadingStrokeQueue;->mFadingQueueSize:I

    if-lez v2, :cond_1

    .line 304
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaHandWritingView$FadingStrokeQueue;->mFadingStrokes:[Lcom/nuance/swype/input/AlphaHandWritingView$FadingStroke;

    const/4 v3, 0x0

    aget-object v0, v2, v3

    .line 305
    .local v0, "recycleStroke":Lcom/nuance/swype/input/AlphaHandWritingView$FadingStroke;
    const/4 v1, 0x0

    .local v1, "start":I
    :goto_0
    iget v2, p0, Lcom/nuance/swype/input/AlphaHandWritingView$FadingStrokeQueue;->mFadingQueueSize:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 306
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaHandWritingView$FadingStrokeQueue;->mFadingStrokes:[Lcom/nuance/swype/input/AlphaHandWritingView$FadingStroke;

    iget-object v3, p0, Lcom/nuance/swype/input/AlphaHandWritingView$FadingStrokeQueue;->mFadingStrokes:[Lcom/nuance/swype/input/AlphaHandWritingView$FadingStroke;

    add-int/lit8 v4, v1, 0x1

    aget-object v3, v3, v4

    aput-object v3, v2, v1

    .line 305
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 309
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaHandWritingView$FadingStrokeQueue;->mFadingStrokesCache:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    iget v2, p0, Lcom/nuance/swype/input/AlphaHandWritingView$FadingStrokeQueue;->mFadingQueueSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/nuance/swype/input/AlphaHandWritingView$FadingStrokeQueue;->mFadingQueueSize:I

    .line 312
    .end local v0    # "recycleStroke":Lcom/nuance/swype/input/AlphaHandWritingView$FadingStroke;
    .end local v1    # "start":I
    :cond_1
    return-void
.end method


# virtual methods
.method public add(Landroid/graphics/Path;)V
    .locals 3
    .param p1, "path"    # Landroid/graphics/Path;

    .prologue
    .line 255
    iget v1, p0, Lcom/nuance/swype/input/AlphaHandWritingView$FadingStrokeQueue;->mFadingQueueSize:I

    const/16 v2, 0x40

    if-lt v1, v2, :cond_0

    .line 256
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingView$FadingStrokeQueue;->removeEnd()V

    .line 259
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingView$FadingStrokeQueue;->mFadingStrokesCache:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 260
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingView$FadingStrokeQueue;->mFadingStrokesCache:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/AlphaHandWritingView$FadingStroke;

    .line 261
    .local v0, "stroke":Lcom/nuance/swype/input/AlphaHandWritingView$FadingStroke;
    invoke-virtual {v0}, Lcom/nuance/swype/input/AlphaHandWritingView$FadingStroke;->resetAlpha()V

    .line 262
    iget-object v1, v0, Lcom/nuance/swype/input/AlphaHandWritingView$FadingStroke;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 263
    iget-object v1, v0, Lcom/nuance/swype/input/AlphaHandWritingView$FadingStroke;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1, p1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 264
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingView$FadingStrokeQueue;->mFadingStrokes:[Lcom/nuance/swype/input/AlphaHandWritingView$FadingStroke;

    iget v2, p0, Lcom/nuance/swype/input/AlphaHandWritingView$FadingStrokeQueue;->mFadingQueueSize:I

    aput-object v0, v1, v2

    .line 265
    iget v1, p0, Lcom/nuance/swype/input/AlphaHandWritingView$FadingStrokeQueue;->mFadingQueueSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/nuance/swype/input/AlphaHandWritingView$FadingStrokeQueue;->mFadingQueueSize:I

    .line 269
    .end local v0    # "stroke":Lcom/nuance/swype/input/AlphaHandWritingView$FadingStroke;
    :goto_0
    return-void

    .line 267
    :cond_1
    invoke-static {}, Lcom/nuance/swype/util/LogManager;->getLog()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v1

    const-string/jumbo v2, "FadingQueue is empty!"

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 294
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/nuance/swype/input/AlphaHandWritingView$FadingStrokeQueue;->mFadingQueueSize:I

    if-ge v0, v1, :cond_0

    .line 295
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingView$FadingStrokeQueue;->mFadingStrokesCache:Ljava/util/List;

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaHandWritingView$FadingStrokeQueue;->mFadingStrokes:[Lcom/nuance/swype/input/AlphaHandWritingView$FadingStroke;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 298
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/nuance/swype/input/AlphaHandWritingView$FadingStrokeQueue;->mFadingQueueSize:I

    .line 299
    return-void
.end method

.method draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 273
    iget v1, p0, Lcom/nuance/swype/input/AlphaHandWritingView$FadingStrokeQueue;->mFadingQueueSize:I

    if-lez v1, :cond_0

    .line 274
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/nuance/swype/input/AlphaHandWritingView$FadingStrokeQueue;->mFadingQueueSize:I

    if-ge v0, v1, :cond_0

    .line 275
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingView$FadingStrokeQueue;->mFadingStrokes:[Lcom/nuance/swype/input/AlphaHandWritingView$FadingStroke;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/nuance/swype/input/AlphaHandWritingView$FadingStroke;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaHandWritingView$FadingStrokeQueue;->mFadingStrokes:[Lcom/nuance/swype/input/AlphaHandWritingView$FadingStroke;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/nuance/swype/input/AlphaHandWritingView$FadingStroke;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 274
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 278
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public reduceAlpha()V
    .locals 3

    .prologue
    .line 281
    iget v1, p0, Lcom/nuance/swype/input/AlphaHandWritingView$FadingStrokeQueue;->mFadingQueueSize:I

    if-lez v1, :cond_1

    .line 282
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/nuance/swype/input/AlphaHandWritingView$FadingStrokeQueue;->mFadingQueueSize:I

    if-ge v0, v1, :cond_0

    .line 283
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingView$FadingStrokeQueue;->mFadingStrokes:[Lcom/nuance/swype/input/AlphaHandWritingView$FadingStroke;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/nuance/swype/input/AlphaHandWritingView$FadingStroke;->decreaseAlpha()V

    .line 282
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 286
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingView$FadingStrokeQueue;->mFadingStrokes:[Lcom/nuance/swype/input/AlphaHandWritingView$FadingStroke;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget v1, v1, Lcom/nuance/swype/input/AlphaHandWritingView$FadingStroke;->mCurrentAlpha:I

    if-nez v1, :cond_1

    .line 287
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingView$FadingStrokeQueue;->removeEnd()V

    .line 290
    .end local v0    # "i":I
    :cond_1
    return-void
.end method
