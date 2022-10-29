.class public Lcom/nuance/swype/input/FaddingStrokeQueue$FaddingStrokeQueueBuffer;
.super Ljava/lang/Object;
.source "FaddingStrokeQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/FaddingStrokeQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "FaddingStrokeQueueBuffer"
.end annotation


# static fields
.field private static final MAX_QUEUE_CAPACITY:I = 0x1e0


# instance fields
.field private mFaddingStrokes:[Lcom/nuance/swype/input/FaddingStrokeQueue$FadingStroke;

.field mFaddingStrokesCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/FaddingStrokeQueue$FadingStroke;",
            ">;"
        }
    .end annotation
.end field

.field public mFadingQueueSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "penColor"    # I

    .prologue
    const/16 v3, 0x1e0

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    new-array v1, v3, [Lcom/nuance/swype/input/FaddingStrokeQueue$FadingStroke;

    iput-object v1, p0, Lcom/nuance/swype/input/FaddingStrokeQueue$FaddingStrokeQueueBuffer;->mFaddingStrokes:[Lcom/nuance/swype/input/FaddingStrokeQueue$FadingStroke;

    .line 190
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/nuance/swype/input/FaddingStrokeQueue$FaddingStrokeQueueBuffer;->mFaddingStrokesCache:Ljava/util/List;

    .line 194
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    if-ge v0, v3, :cond_20

    .line 195
    iget-object v1, p0, Lcom/nuance/swype/input/FaddingStrokeQueue$FaddingStrokeQueueBuffer;->mFaddingStrokesCache:Ljava/util/List;

    new-instance v2, Lcom/nuance/swype/input/FaddingStrokeQueue$FadingStroke;

    invoke-direct {v2, p1, p2}, Lcom/nuance/swype/input/FaddingStrokeQueue$FadingStroke;-><init>(Landroid/content/Context;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 198
    :cond_20
    const/4 v1, 0x0

    iput v1, p0, Lcom/nuance/swype/input/FaddingStrokeQueue$FaddingStrokeQueueBuffer;->mFadingQueueSize:I

    .line 199
    return-void
.end method

.method private removeEnd()V
    .registers 6

    .prologue
    .line 268
    iget v2, p0, Lcom/nuance/swype/input/FaddingStrokeQueue$FaddingStrokeQueueBuffer;->mFadingQueueSize:I

    if-lez v2, :cond_28

    .line 269
    iget-object v2, p0, Lcom/nuance/swype/input/FaddingStrokeQueue$FaddingStrokeQueueBuffer;->mFaddingStrokes:[Lcom/nuance/swype/input/FaddingStrokeQueue$FadingStroke;

    const/4 v3, 0x0

    aget-object v0, v2, v3

    .line 270
    .local v0, "recycleStroke":Lcom/nuance/swype/input/FaddingStrokeQueue$FadingStroke;
    const/4 v1, 0x0

    .local v1, "start":I
    :goto_a
    iget v2, p0, Lcom/nuance/swype/input/FaddingStrokeQueue$FaddingStrokeQueueBuffer;->mFadingQueueSize:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1d

    .line 271
    iget-object v2, p0, Lcom/nuance/swype/input/FaddingStrokeQueue$FaddingStrokeQueueBuffer;->mFaddingStrokes:[Lcom/nuance/swype/input/FaddingStrokeQueue$FadingStroke;

    iget-object v3, p0, Lcom/nuance/swype/input/FaddingStrokeQueue$FaddingStrokeQueueBuffer;->mFaddingStrokes:[Lcom/nuance/swype/input/FaddingStrokeQueue$FadingStroke;

    add-int/lit8 v4, v1, 0x1

    aget-object v3, v3, v4

    aput-object v3, v2, v1

    .line 270
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 274
    :cond_1d
    iget-object v2, p0, Lcom/nuance/swype/input/FaddingStrokeQueue$FaddingStrokeQueueBuffer;->mFaddingStrokesCache:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    iget v2, p0, Lcom/nuance/swype/input/FaddingStrokeQueue$FaddingStrokeQueueBuffer;->mFadingQueueSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/nuance/swype/input/FaddingStrokeQueue$FaddingStrokeQueueBuffer;->mFadingQueueSize:I

    .line 277
    .end local v0    # "recycleStroke":Lcom/nuance/swype/input/FaddingStrokeQueue$FadingStroke;
    .end local v1    # "start":I
    :cond_28
    return-void
.end method


# virtual methods
.method public add(Landroid/graphics/Path;)V
    .registers 5
    .param p1, "path"    # Landroid/graphics/Path;

    .prologue
    .line 208
    iget v1, p0, Lcom/nuance/swype/input/FaddingStrokeQueue$FaddingStrokeQueueBuffer;->mFadingQueueSize:I

    const/16 v2, 0x1e0

    if-lt v1, v2, :cond_9

    .line 209
    invoke-direct {p0}, Lcom/nuance/swype/input/FaddingStrokeQueue$FaddingStrokeQueueBuffer;->removeEnd()V

    .line 212
    :cond_9
    iget-object v1, p0, Lcom/nuance/swype/input/FaddingStrokeQueue$FaddingStrokeQueueBuffer;->mFaddingStrokesCache:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_34

    .line 213
    iget-object v1, p0, Lcom/nuance/swype/input/FaddingStrokeQueue$FaddingStrokeQueueBuffer;->mFaddingStrokesCache:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/FaddingStrokeQueue$FadingStroke;

    .line 214
    .local v0, "stroke":Lcom/nuance/swype/input/FaddingStrokeQueue$FadingStroke;
    invoke-virtual {v0}, Lcom/nuance/swype/input/FaddingStrokeQueue$FadingStroke;->resetAlpha()V

    .line 215
    iget-object v1, v0, Lcom/nuance/swype/input/FaddingStrokeQueue$FadingStroke;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 216
    iget-object v1, v0, Lcom/nuance/swype/input/FaddingStrokeQueue$FadingStroke;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1, p1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 217
    iget-object v1, p0, Lcom/nuance/swype/input/FaddingStrokeQueue$FaddingStrokeQueueBuffer;->mFaddingStrokes:[Lcom/nuance/swype/input/FaddingStrokeQueue$FadingStroke;

    iget v2, p0, Lcom/nuance/swype/input/FaddingStrokeQueue$FaddingStrokeQueueBuffer;->mFadingQueueSize:I

    aput-object v0, v1, v2

    .line 218
    iget v1, p0, Lcom/nuance/swype/input/FaddingStrokeQueue$FaddingStrokeQueueBuffer;->mFadingQueueSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/nuance/swype/input/FaddingStrokeQueue$FaddingStrokeQueueBuffer;->mFadingQueueSize:I

    .line 222
    .end local v0    # "stroke":Lcom/nuance/swype/input/FaddingStrokeQueue$FadingStroke;
    :goto_33
    return-void

    .line 220
    :cond_34
    invoke-static {}, Lcom/nuance/swype/util/LogManager;->getLog()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v1

    const-string/jumbo v2, "FadingQueue is empty!"

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_33
.end method

.method public clear()V
    .registers 4

    .prologue
    .line 259
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/nuance/swype/input/FaddingStrokeQueue$FaddingStrokeQueueBuffer;->mFadingQueueSize:I

    if-ge v0, v1, :cond_11

    .line 260
    iget-object v1, p0, Lcom/nuance/swype/input/FaddingStrokeQueue$FaddingStrokeQueueBuffer;->mFaddingStrokesCache:Ljava/util/List;

    iget-object v2, p0, Lcom/nuance/swype/input/FaddingStrokeQueue$FaddingStrokeQueueBuffer;->mFaddingStrokes:[Lcom/nuance/swype/input/FaddingStrokeQueue$FadingStroke;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 263
    :cond_11
    const/4 v1, 0x0

    iput v1, p0, Lcom/nuance/swype/input/FaddingStrokeQueue$FaddingStrokeQueueBuffer;->mFadingQueueSize:I

    .line 264
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 226
    iget v1, p0, Lcom/nuance/swype/input/FaddingStrokeQueue$FaddingStrokeQueueBuffer;->mFadingQueueSize:I

    if-lez v1, :cond_1b

    .line 227
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget v1, p0, Lcom/nuance/swype/input/FaddingStrokeQueue$FaddingStrokeQueueBuffer;->mFadingQueueSize:I

    if-ge v0, v1, :cond_1b

    .line 228
    iget-object v1, p0, Lcom/nuance/swype/input/FaddingStrokeQueue$FaddingStrokeQueueBuffer;->mFaddingStrokes:[Lcom/nuance/swype/input/FaddingStrokeQueue$FadingStroke;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/nuance/swype/input/FaddingStrokeQueue$FadingStroke;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/nuance/swype/input/FaddingStrokeQueue$FaddingStrokeQueueBuffer;->mFaddingStrokes:[Lcom/nuance/swype/input/FaddingStrokeQueue$FadingStroke;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/nuance/swype/input/FaddingStrokeQueue$FadingStroke;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 227
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 231
    .end local v0    # "i":I
    :cond_1b
    return-void
.end method

.method public reduceAlpha()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 234
    iget v1, p0, Lcom/nuance/swype/input/FaddingStrokeQueue$FaddingStrokeQueueBuffer;->mFadingQueueSize:I

    if-lez v1, :cond_1f

    .line 235
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget v1, p0, Lcom/nuance/swype/input/FaddingStrokeQueue$FaddingStrokeQueueBuffer;->mFadingQueueSize:I

    if-ge v0, v1, :cond_14

    .line 236
    iget-object v1, p0, Lcom/nuance/swype/input/FaddingStrokeQueue$FaddingStrokeQueueBuffer;->mFaddingStrokes:[Lcom/nuance/swype/input/FaddingStrokeQueue$FadingStroke;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/FaddingStrokeQueue$FadingStroke;->decreaseAlpha(Z)V

    .line 235
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 239
    :cond_14
    iget-object v1, p0, Lcom/nuance/swype/input/FaddingStrokeQueue$FaddingStrokeQueueBuffer;->mFaddingStrokes:[Lcom/nuance/swype/input/FaddingStrokeQueue$FadingStroke;

    aget-object v1, v1, v2

    iget v1, v1, Lcom/nuance/swype/input/FaddingStrokeQueue$FadingStroke;->mCurrentAlpha:I

    if-nez v1, :cond_1f

    .line 240
    invoke-direct {p0}, Lcom/nuance/swype/input/FaddingStrokeQueue$FaddingStrokeQueueBuffer;->removeEnd()V

    .line 243
    .end local v0    # "i":I
    :cond_1f
    return-void
.end method

.method public reduceAlphaPenDown()V
    .registers 4

    .prologue
    .line 246
    iget v1, p0, Lcom/nuance/swype/input/FaddingStrokeQueue$FaddingStrokeQueueBuffer;->mFadingQueueSize:I

    if-lez v1, :cond_20

    .line 247
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget v1, p0, Lcom/nuance/swype/input/FaddingStrokeQueue$FaddingStrokeQueueBuffer;->mFadingQueueSize:I

    if-ge v0, v1, :cond_14

    .line 248
    iget-object v1, p0, Lcom/nuance/swype/input/FaddingStrokeQueue$FaddingStrokeQueueBuffer;->mFaddingStrokes:[Lcom/nuance/swype/input/FaddingStrokeQueue$FadingStroke;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/FaddingStrokeQueue$FadingStroke;->decreaseAlpha(Z)V

    .line 247
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 251
    :cond_14
    iget-object v1, p0, Lcom/nuance/swype/input/FaddingStrokeQueue$FaddingStrokeQueueBuffer;->mFaddingStrokes:[Lcom/nuance/swype/input/FaddingStrokeQueue$FadingStroke;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget v1, v1, Lcom/nuance/swype/input/FaddingStrokeQueue$FadingStroke;->mCurrentAlpha:I

    if-nez v1, :cond_20

    .line 252
    invoke-direct {p0}, Lcom/nuance/swype/input/FaddingStrokeQueue$FaddingStrokeQueueBuffer;->removeEnd()V

    .line 255
    .end local v0    # "i":I
    :cond_20
    return-void
.end method

.method public setFadingStrokeWidth(F)V
    .registers 6
    .param p1, "width"    # F

    .prologue
    .line 202
    iget-object v1, p0, Lcom/nuance/swype/input/FaddingStrokeQueue$FaddingStrokeQueueBuffer;->mFaddingStrokes:[Lcom/nuance/swype/input/FaddingStrokeQueue$FadingStroke;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_e

    aget-object v3, v1, v0

    .line 203
    invoke-virtual {v3, p1}, Lcom/nuance/swype/input/FaddingStrokeQueue$FadingStroke;->setStrokeWidth(F)V

    .line 202
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 205
    :cond_e
    return-void
.end method
