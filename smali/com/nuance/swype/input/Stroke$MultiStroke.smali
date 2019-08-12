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

    .line 46
    invoke-direct {p0}, Lcom/nuance/swype/input/Stroke;-><init>()V

    .line 43
    new-array v1, v2, [Landroid/graphics/Path;

    iput-object v1, p0, Lcom/nuance/swype/input/Stroke$MultiStroke;->mPaths:[Landroid/graphics/Path;

    .line 44
    new-array v1, v2, [Lcom/nuance/swype/input/Stroke$Arc;

    iput-object v1, p0, Lcom/nuance/swype/input/Stroke$MultiStroke;->mArcs:[Lcom/nuance/swype/input/Stroke$Arc;

    .line 47
    iput p1, p0, Lcom/nuance/swype/input/Stroke$MultiStroke;->mStrokeWidth:I

    .line 49
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/nuance/swype/input/Stroke$MultiStroke;->mPaths:[Landroid/graphics/Path;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 50
    iget-object v1, p0, Lcom/nuance/swype/input/Stroke$MultiStroke;->mPaths:[Landroid/graphics/Path;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    aput-object v2, v1, v0

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/nuance/swype/input/Stroke$MultiStroke;->mArcs:[Lcom/nuance/swype/input/Stroke$Arc;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 54
    iget-object v1, p0, Lcom/nuance/swype/input/Stroke$MultiStroke;->mArcs:[Lcom/nuance/swype/input/Stroke$Arc;

    new-instance v2, Lcom/nuance/swype/input/Stroke$Arc;

    invoke-direct {v2}, Lcom/nuance/swype/input/Stroke$Arc;-><init>()V

    aput-object v2, v1, v0

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 56
    :cond_1
    return-void
.end method

.method private ensureMininumPath(Lcom/nuance/swype/input/Stroke$Arc;Landroid/graphics/Path;)V
    .locals 4
    .param p1, "arc"    # Lcom/nuance/swype/input/Stroke$Arc;
    .param p2, "path"    # Landroid/graphics/Path;

    .prologue
    .line 145
    iget-object v1, p1, Lcom/nuance/swype/input/Stroke$Arc;->mPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p1, Lcom/nuance/swype/input/Stroke$Arc;->mPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/nuance/swype/input/Stroke$MultiStroke;->mStrokeWidth:I

    if-ge v1, v2, :cond_0

    .line 146
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/nuance/swype/input/Stroke$MultiStroke;->mStrokeWidth:I

    iget-object v2, p1, Lcom/nuance/swype/input/Stroke$Arc;->mPoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 147
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

    invoke-virtual {p2, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/nuance/swype/input/Stroke$MultiStroke;->clearArcs()V

    .line 156
    invoke-virtual {p0}, Lcom/nuance/swype/input/Stroke$MultiStroke;->clearPaths()V

    .line 157
    return-void
.end method

.method public clearArcs()V
    .locals 2

    .prologue
    .line 161
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/nuance/swype/input/Stroke$MultiStroke;->mArcs:[Lcom/nuance/swype/input/Stroke$Arc;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/nuance/swype/input/Stroke$MultiStroke;->mArcs:[Lcom/nuance/swype/input/Stroke$Arc;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/nuance/swype/input/Stroke$Arc;->clear()V

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    :cond_0
    return-void
.end method

.method public clearPaths()V
    .locals 2

    .prologue
    .line 168
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/nuance/swype/input/Stroke$MultiStroke;->mPaths:[Landroid/graphics/Path;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/nuance/swype/input/Stroke$MultiStroke;->mPaths:[Landroid/graphics/Path;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    :cond_0
    return-void
.end method

.method public getArcs()[Lcom/nuance/swype/input/Stroke$Arc;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/nuance/swype/input/Stroke$MultiStroke;->mArcs:[Lcom/nuance/swype/input/Stroke$Arc;

    return-object v0
.end method

.method public getPaths()[Landroid/graphics/Path;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/nuance/swype/input/Stroke$MultiStroke;->mPaths:[Landroid/graphics/Path;

    return-object v0
.end method

.method public handleMotionEvent(Landroid/view/MotionEvent;)V
    .locals 17
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 61
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 62
    .local v2, "action":I
    and-int/lit16 v3, v2, 0xff

    .line 63
    .local v3, "actionCode":I
    shr-int/lit8 v10, v2, 0x8

    .line 64
    .local v10, "pointerIndex":I
    move-object/from16 v0, p1

    invoke-static {v0, v10}, Lcom/nuance/swype/input/MotionEventWrapper;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v9

    .line 86
    .local v9, "pointerId":I
    if-eqz v3, :cond_0

    const/4 v14, 0x5

    if-ne v3, v14, :cond_3

    .line 90
    :cond_0
    if-nez v3, :cond_1

    .line 91
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/Stroke$MultiStroke;->clear()V

    .line 94
    :cond_1
    move-object/from16 v0, p1

    invoke-static {v0, v10}, Lcom/nuance/swype/input/MotionEventWrapper;->getX(Landroid/view/MotionEvent;I)F

    move-result v14

    float-to-int v12, v14

    .line 95
    .local v12, "x":I
    move-object/from16 v0, p1

    invoke-static {v0, v10}, Lcom/nuance/swype/input/MotionEventWrapper;->getY(Landroid/view/MotionEvent;I)F

    move-result v14

    float-to-int v13, v14

    .line 97
    .local v13, "y":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/Stroke$MultiStroke;->mPaths:[Landroid/graphics/Path;

    aget-object v14, v14, v9

    int-to-float v15, v12

    int-to-float v0, v13

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/graphics/Path;->moveTo(FF)V

    .line 98
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/Stroke$MultiStroke;->mArcs:[Lcom/nuance/swype/input/Stroke$Arc;

    aget-object v14, v14, v9

    invoke-virtual {v14, v12, v13}, Lcom/nuance/swype/input/Stroke$Arc;->addPoint(II)V

    .line 138
    .end local v12    # "x":I
    .end local v13    # "y":I
    :cond_2
    :goto_0
    return-void

    .line 100
    :cond_3
    const/4 v14, 0x2

    if-ne v3, v14, :cond_5

    .line 102
    invoke-static/range {p1 .. p1}, Lcom/nuance/swype/input/MotionEventWrapper;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v8

    .line 107
    .local v8, "pointerCount":I
    const/4 v6, 0x0

    .local v6, "index":I
    :goto_1
    if-ge v6, v8, :cond_2

    .line 109
    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/nuance/swype/input/MotionEventWrapper;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v11

    .line 110
    .local v11, "thisPointerId":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v4

    .line 112
    .local v4, "histories":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/Stroke$MultiStroke;->mArcs:[Lcom/nuance/swype/input/Stroke$Arc;

    aget-object v1, v14, v11

    .line 113
    .local v1, "Arc":Lcom/nuance/swype/input/Stroke$Arc;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/Stroke$MultiStroke;->mPaths:[Landroid/graphics/Path;

    aget-object v7, v14, v11

    .line 121
    .local v7, "path":Landroid/graphics/Path;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v4, :cond_4

    .line 122
    move-object/from16 v0, p1

    invoke-static {v0, v6, v5}, Lcom/nuance/swype/input/MotionEventWrapper;->getHistoricalX(Landroid/view/MotionEvent;II)F

    move-result v14

    float-to-int v12, v14

    .line 123
    .restart local v12    # "x":I
    move-object/from16 v0, p1

    invoke-static {v0, v6, v5}, Lcom/nuance/swype/input/MotionEventWrapper;->getHistoricalY(Landroid/view/MotionEvent;II)F

    move-result v14

    float-to-int v13, v14

    .line 124
    .restart local v13    # "y":I
    int-to-float v14, v12

    int-to-float v15, v13

    invoke-virtual {v7, v14, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 125
    invoke-virtual {v1, v12, v13}, Lcom/nuance/swype/input/Stroke$Arc;->addPoint(II)V

    .line 121
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 128
    .end local v12    # "x":I
    .end local v13    # "y":I
    :cond_4
    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/nuance/swype/input/MotionEventWrapper;->getX(Landroid/view/MotionEvent;I)F

    move-result v14

    float-to-int v12, v14

    .line 129
    .restart local v12    # "x":I
    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/nuance/swype/input/MotionEventWrapper;->getY(Landroid/view/MotionEvent;I)F

    move-result v14

    float-to-int v13, v14

    .line 130
    .restart local v13    # "y":I
    int-to-float v14, v12

    int-to-float v15, v13

    invoke-virtual {v7, v14, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 131
    invoke-virtual {v1, v12, v13}, Lcom/nuance/swype/input/Stroke$Arc;->addPoint(II)V

    .line 107
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 134
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

    .line 135
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

    .line 136
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
