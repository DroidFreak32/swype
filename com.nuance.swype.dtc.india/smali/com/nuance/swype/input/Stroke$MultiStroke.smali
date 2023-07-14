.class public Lcom/nuance/swype/input/Stroke$MultiStroke;
.super Lcom/nuance/swype/input/Stroke;
.source "Stroke.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/Stroke;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultiStroke"
.end annotation


# static fields
.field private static final MAX_POINTER_INDICES:I = 0xb


# instance fields
.field private mArcs:[Lcom/nuance/swype/input/Stroke$Arc;

.field private mPaths:[Landroid/graphics/Path;


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "strokeWidth"    # I

    .prologue
    const/16 v2, 0xb

    .line 48
    invoke-direct {p0}, Lcom/nuance/swype/input/Stroke;-><init>()V

    .line 45
    new-array v1, v2, [Landroid/graphics/Path;

    iput-object v1, p0, Lcom/nuance/swype/input/Stroke$MultiStroke;->mPaths:[Landroid/graphics/Path;

    .line 46
    new-array v1, v2, [Lcom/nuance/swype/input/Stroke$Arc;

    iput-object v1, p0, Lcom/nuance/swype/input/Stroke$MultiStroke;->mArcs:[Lcom/nuance/swype/input/Stroke$Arc;

    .line 49
    iput p1, p0, Lcom/nuance/swype/input/Stroke$MultiStroke;->mStrokeWidth:I

    .line 51
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/nuance/swype/input/Stroke$MultiStroke;->mPaths:[Landroid/graphics/Path;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/nuance/swype/input/Stroke$MultiStroke;->mPaths:[Landroid/graphics/Path;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    aput-object v2, v1, v0

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/nuance/swype/input/Stroke$MultiStroke;->mArcs:[Lcom/nuance/swype/input/Stroke$Arc;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 56
    iget-object v1, p0, Lcom/nuance/swype/input/Stroke$MultiStroke;->mArcs:[Lcom/nuance/swype/input/Stroke$Arc;

    new-instance v2, Lcom/nuance/swype/input/Stroke$Arc;

    invoke-direct {v2}, Lcom/nuance/swype/input/Stroke$Arc;-><init>()V

    aput-object v2, v1, v0

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 58
    :cond_1
    return-void
.end method

.method private clearArcs()V
    .locals 4

    .prologue
    .line 190
    iget-object v1, p0, Lcom/nuance/swype/input/Stroke$MultiStroke;->mArcs:[Lcom/nuance/swype/input/Stroke$Arc;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 191
    invoke-virtual {v3}, Lcom/nuance/swype/input/Stroke$Arc;->clear()V

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 193
    :cond_0
    return-void
.end method

.method private clearPaths()V
    .locals 4

    .prologue
    .line 196
    iget-object v1, p0, Lcom/nuance/swype/input/Stroke$MultiStroke;->mPaths:[Landroid/graphics/Path;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 197
    invoke-virtual {v3}, Landroid/graphics/Path;->rewind()V

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    :cond_0
    return-void
.end method

.method private ensureMininumPath(Lcom/nuance/swype/input/Stroke$Arc;Landroid/graphics/Path;)V
    .locals 4
    .param p1, "arc"    # Lcom/nuance/swype/input/Stroke$Arc;
    .param p2, "path"    # Landroid/graphics/Path;

    .prologue
    .line 175
    iget-object v1, p1, Lcom/nuance/swype/input/Stroke$Arc;->mPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p1, Lcom/nuance/swype/input/Stroke$Arc;->mPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/nuance/swype/input/Stroke$MultiStroke;->mStrokeWidth:I

    if-ge v1, v2, :cond_0

    .line 176
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/nuance/swype/input/Stroke$MultiStroke;->mStrokeWidth:I

    iget-object v2, p1, Lcom/nuance/swype/input/Stroke$Arc;->mPoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 177
    iget-object v1, p1, Lcom/nuance/swype/input/Stroke$Arc;->mPoints:Ljava/util/List;

    iget-object v2, p1, Lcom/nuance/swype/input/Stroke$Arc;->mPoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    int-to-float v2, v1

    iget-object v1, p1, Lcom/nuance/swype/input/Stroke$Arc;->mPoints:Ljava/util/List;

    iget-object v3, p1, Lcom/nuance/swype/input/Stroke$Arc;->mPoints:Ljava/util/List;

    .line 178
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    int-to-float v1, v1

    .line 177
    invoke-virtual {p2, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 176
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 181
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/nuance/swype/input/Stroke$MultiStroke;->clearArcs()V

    .line 186
    invoke-direct {p0}, Lcom/nuance/swype/input/Stroke$MultiStroke;->clearPaths()V

    .line 187
    return-void
.end method

.method public getArcs()[Lcom/nuance/swype/input/Stroke$Arc;
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/nuance/swype/input/Stroke$MultiStroke;->mArcs:[Lcom/nuance/swype/input/Stroke$Arc;

    iget-object v1, p0, Lcom/nuance/swype/input/Stroke$MultiStroke;->mArcs:[Lcom/nuance/swype/input/Stroke$Arc;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swype/input/Stroke$Arc;

    .line 210
    return-object v0
.end method

.method public getPaths()[Landroid/graphics/Path;
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/nuance/swype/input/Stroke$MultiStroke;->mPaths:[Landroid/graphics/Path;

    iget-object v1, p0, Lcom/nuance/swype/input/Stroke$MultiStroke;->mPaths:[Landroid/graphics/Path;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Path;

    .line 204
    return-object v0
.end method

.method public handleMotionEvent(Landroid/view/MotionEvent;)V
    .locals 17
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 63
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 64
    .local v2, "action":I
    and-int/lit16 v3, v2, 0xff

    .line 65
    .local v3, "actionCode":I
    shr-int/lit8 v10, v2, 0x8

    .line 66
    .local v10, "pointerIndex":I
    move-object/from16 v0, p1

    invoke-static {v0, v10}, Lcom/nuance/swype/input/MotionEventWrapper;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v9

    .line 88
    .local v9, "pointerId":I
    if-eqz v3, :cond_0

    const/4 v14, 0x5

    if-ne v3, v14, :cond_3

    .line 92
    :cond_0
    if-nez v3, :cond_1

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/Stroke$MultiStroke;->clear()V

    .line 96
    :cond_1
    move-object/from16 v0, p1

    invoke-static {v0, v10}, Lcom/nuance/swype/input/MotionEventWrapper;->getX(Landroid/view/MotionEvent;I)F

    move-result v14

    float-to-int v12, v14

    .line 97
    .local v12, "x":I
    move-object/from16 v0, p1

    invoke-static {v0, v10}, Lcom/nuance/swype/input/MotionEventWrapper;->getY(Landroid/view/MotionEvent;I)F

    move-result v14

    float-to-int v13, v14

    .line 99
    .local v13, "y":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/Stroke$MultiStroke;->mPaths:[Landroid/graphics/Path;

    aget-object v14, v14, v9

    int-to-float v15, v12

    int-to-float v0, v13

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/graphics/Path;->moveTo(FF)V

    .line 100
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/Stroke$MultiStroke;->mArcs:[Lcom/nuance/swype/input/Stroke$Arc;

    aget-object v14, v14, v9

    invoke-virtual {v14, v12, v13}, Lcom/nuance/swype/input/Stroke$Arc;->addPoint(II)V

    .line 140
    .end local v12    # "x":I
    .end local v13    # "y":I
    :cond_2
    :goto_0
    return-void

    .line 102
    :cond_3
    const/4 v14, 0x2

    if-ne v3, v14, :cond_5

    .line 104
    invoke-static/range {p1 .. p1}, Lcom/nuance/swype/input/MotionEventWrapper;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v8

    .line 109
    .local v8, "pointerCount":I
    const/4 v6, 0x0

    .local v6, "index":I
    :goto_1
    if-ge v6, v8, :cond_2

    .line 111
    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/nuance/swype/input/MotionEventWrapper;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v11

    .line 112
    .local v11, "thisPointerId":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v4

    .line 114
    .local v4, "histories":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/Stroke$MultiStroke;->mArcs:[Lcom/nuance/swype/input/Stroke$Arc;

    aget-object v1, v14, v11

    .line 115
    .local v1, "Arc":Lcom/nuance/swype/input/Stroke$Arc;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/Stroke$MultiStroke;->mPaths:[Landroid/graphics/Path;

    aget-object v7, v14, v11

    .line 123
    .local v7, "path":Landroid/graphics/Path;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v4, :cond_4

    .line 124
    move-object/from16 v0, p1

    invoke-static {v0, v6, v5}, Lcom/nuance/swype/input/MotionEventWrapper;->getHistoricalX(Landroid/view/MotionEvent;II)F

    move-result v14

    float-to-int v12, v14

    .line 125
    .restart local v12    # "x":I
    move-object/from16 v0, p1

    invoke-static {v0, v6, v5}, Lcom/nuance/swype/input/MotionEventWrapper;->getHistoricalY(Landroid/view/MotionEvent;II)F

    move-result v14

    float-to-int v13, v14

    .line 126
    .restart local v13    # "y":I
    int-to-float v14, v12

    int-to-float v15, v13

    invoke-virtual {v7, v14, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 127
    invoke-virtual {v1, v12, v13}, Lcom/nuance/swype/input/Stroke$Arc;->addPoint(II)V

    .line 123
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 130
    .end local v12    # "x":I
    .end local v13    # "y":I
    :cond_4
    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/nuance/swype/input/MotionEventWrapper;->getX(Landroid/view/MotionEvent;I)F

    move-result v14

    float-to-int v12, v14

    .line 131
    .restart local v12    # "x":I
    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/nuance/swype/input/MotionEventWrapper;->getY(Landroid/view/MotionEvent;I)F

    move-result v14

    float-to-int v13, v14

    .line 132
    .restart local v13    # "y":I
    int-to-float v14, v12

    int-to-float v15, v13

    invoke-virtual {v7, v14, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 133
    invoke-virtual {v1, v12, v13}, Lcom/nuance/swype/input/Stroke$Arc;->addPoint(II)V

    .line 109
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 136
    .end local v1    # "Arc":Lcom/nuance/swype/input/Stroke$Arc;
    .end local v4    # "histories":I
    .end local v5    # "i":I
    .end local v6    # "index":I
    .end local v7    # "path":Landroid/graphics/Path;
    .end local v8    # "pointerCount":I
    .end local v11    # "thisPointerId":I
    .end local v12    # "x":I
    .end local v13    # "y":I
    :cond_5
    const/4 v14, 0x1

    if-ne v3, v14, :cond_2

    .line 137
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/Stroke$MultiStroke;->mArcs:[Lcom/nuance/swype/input/Stroke$Arc;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/swype/input/Stroke$MultiStroke;->mPaths:[Landroid/graphics/Path;

    const/16 v16, 0x0

    aget-object v15, v15, v16

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/nuance/swype/input/Stroke$MultiStroke;->ensureMininumPath(Lcom/nuance/swype/input/Stroke$Arc;Landroid/graphics/Path;)V

    .line 138
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/Stroke$MultiStroke;->mArcs:[Lcom/nuance/swype/input/Stroke$Arc;

    const/4 v15, 0x1

    aget-object v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/swype/input/Stroke$MultiStroke;->mPaths:[Landroid/graphics/Path;

    const/16 v16, 0x1

    aget-object v15, v15, v16

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/nuance/swype/input/Stroke$MultiStroke;->ensureMininumPath(Lcom/nuance/swype/input/Stroke$Arc;Landroid/graphics/Path;)V

    goto/16 :goto_0
.end method

.method public handleTouchEnd(IILcom/nuance/input/swypecorelib/KeyType;Z)V
    .locals 4
    .param p1, "pointerId"    # I
    .param p2, "keyIndex"    # I
    .param p3, "keyType"    # Lcom/nuance/input/swypecorelib/KeyType;
    .param p4, "isTraced"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 166
    iget-object v0, p0, Lcom/nuance/swype/input/Stroke$MultiStroke;->mArcs:[Lcom/nuance/swype/input/Stroke$Arc;

    aget-object v0, v0, v2

    iget-object v1, p0, Lcom/nuance/swype/input/Stroke$MultiStroke;->mPaths:[Landroid/graphics/Path;

    aget-object v1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/Stroke$MultiStroke;->ensureMininumPath(Lcom/nuance/swype/input/Stroke$Arc;Landroid/graphics/Path;)V

    .line 167
    iget-object v0, p0, Lcom/nuance/swype/input/Stroke$MultiStroke;->mArcs:[Lcom/nuance/swype/input/Stroke$Arc;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/nuance/swype/input/Stroke$MultiStroke;->mPaths:[Landroid/graphics/Path;

    aget-object v1, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/Stroke$MultiStroke;->ensureMininumPath(Lcom/nuance/swype/input/Stroke$Arc;Landroid/graphics/Path;)V

    .line 168
    return-void
.end method

.method public handleTouchMoved(II[F[F[IZ)V
    .locals 7
    .param p1, "pointerId"    # I
    .param p2, "keyIndex"    # I
    .param p3, "xcoords"    # [F
    .param p4, "ycoords"    # [F
    .param p5, "times"    # [I
    .param p6, "canBeTraced"    # Z

    .prologue
    .line 145
    iget-object v4, p0, Lcom/nuance/swype/input/Stroke$MultiStroke;->mArcs:[Lcom/nuance/swype/input/Stroke$Arc;

    aget-object v4, v4, p1

    iget-object v4, v4, Lcom/nuance/swype/input/Stroke$Arc;->mPoints:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 147
    .local v1, "i":I
    :goto_0
    array-length v4, p3

    if-ge v1, v4, :cond_1

    .line 148
    aget v4, p3, v1

    float-to-int v2, v4

    .line 149
    .local v2, "x":I
    aget v4, p4, v1

    float-to-int v3, v4

    .line 151
    .local v3, "y":I
    if-nez v1, :cond_0

    .line 152
    iget-object v4, p0, Lcom/nuance/swype/input/Stroke$MultiStroke;->mPaths:[Landroid/graphics/Path;

    aget-object v4, v4, p1

    int-to-float v5, v2

    int-to-float v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 153
    iget-object v4, p0, Lcom/nuance/swype/input/Stroke$MultiStroke;->mArcs:[Lcom/nuance/swype/input/Stroke$Arc;

    aget-object v4, v4, p1

    invoke-virtual {v4, v2, v3}, Lcom/nuance/swype/input/Stroke$Arc;->addPoint(II)V

    .line 147
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    :cond_0
    iget-object v4, p0, Lcom/nuance/swype/input/Stroke$MultiStroke;->mArcs:[Lcom/nuance/swype/input/Stroke$Arc;

    aget-object v0, v4, p1

    .line 157
    .local v0, "Arc":Lcom/nuance/swype/input/Stroke$Arc;
    iget-object v4, p0, Lcom/nuance/swype/input/Stroke$MultiStroke;->mPaths:[Landroid/graphics/Path;

    aget-object v4, v4, p1

    .line 158
    int-to-float v5, v2

    int-to-float v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 159
    invoke-virtual {v0, v2, v3}, Lcom/nuance/swype/input/Stroke$Arc;->addPoint(II)V

    goto :goto_1

    .line 162
    .end local v0    # "Arc":Lcom/nuance/swype/input/Stroke$Arc;
    .end local v2    # "x":I
    .end local v3    # "y":I
    :cond_1
    return-void
.end method
