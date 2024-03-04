.class public Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;
.super Ljava/lang/Object;
.source "ScrubGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector$Direction;
    }
.end annotation


# static fields
.field private static final CHANGE_THRESHOLD:I = 0x4

.field private static final TAG:Ljava/lang/String; = "ScrubGesture"


# instance fields
.field private circleCount:I

.field currentDirection:Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector$Direction;

.field private currentXSign:I

.field private currentYSign:I

.field private isFirstMove:Z

.field private max:I

.field private min:I

.field private newCircleComplete:Z

.field private previousX:F

.field private previousXSign:I

.field private previousY:F

.field private previousYSign:I

.field private xSignChangeCount:I

.field private xSignChangePattern:[I

.field private ySignChangeCount:I

.field private ySignChangePattern:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->xSignChangePattern:[I

    .line 58
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->ySignChangePattern:[I

    return-void

    .line 57
    nop

    :array_0
    .array-data 4
        0x1
        0x0
        0x0
        0x1
    .end array-data

    .line 58
    :array_1
    .array-data 4
        0x1
        0x1
        0x0
        0x0
    .end array-data
.end method

.method private computeDirection()V
    .locals 7

    .prologue
    .line 188
    const/4 v3, 0x0

    .line 189
    .local v3, "matchPointIndex":I
    iget-object v5, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->xSignChangePattern:[I

    array-length v4, v5

    .line 190
    .local v4, "patternLength":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 191
    iget v5, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->previousXSign:I

    iget-object v6, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->xSignChangePattern:[I

    aget v6, v6, v2

    if-ne v5, v6, :cond_3

    iget v5, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->previousYSign:I

    iget-object v6, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->ySignChangePattern:[I

    aget v6, v6, v2

    if-ne v5, v6, :cond_3

    .line 192
    move v3, v2

    .line 198
    :cond_0
    add-int/lit8 v5, v3, 0x1

    rem-int v1, v5, v4

    .line 199
    .local v1, "clockwiseCheckPointIndex":I
    add-int/lit8 v0, v3, -0x1

    .line 200
    .local v0, "anticlockwiseCheckPointIndex":I
    if-gez v0, :cond_1

    .line 201
    add-int/lit8 v0, v4, -0x1

    .line 204
    :cond_1
    iget v5, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->currentXSign:I

    iget-object v6, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->xSignChangePattern:[I

    aget v6, v6, v1

    if-ne v5, v6, :cond_4

    iget v5, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->currentYSign:I

    iget-object v6, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->ySignChangePattern:[I

    aget v6, v6, v1

    if-ne v5, v6, :cond_4

    .line 205
    sget-object v5, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector$Direction;->CLOCKWISE:Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector$Direction;

    iput-object v5, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->currentDirection:Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector$Direction;

    .line 210
    :cond_2
    :goto_1
    return-void

    .line 190
    .end local v0    # "anticlockwiseCheckPointIndex":I
    .end local v1    # "clockwiseCheckPointIndex":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 207
    .restart local v0    # "anticlockwiseCheckPointIndex":I
    .restart local v1    # "clockwiseCheckPointIndex":I
    :cond_4
    iget v5, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->currentXSign:I

    iget-object v6, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->xSignChangePattern:[I

    aget v6, v6, v0

    if-ne v5, v6, :cond_2

    iget v5, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->currentYSign:I

    iget-object v6, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->ySignChangePattern:[I

    aget v6, v6, v0

    if-ne v5, v6, :cond_2

    .line 208
    sget-object v5, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector$Direction;->ANTI_CLOCKWISE:Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector$Direction;

    iput-object v5, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->currentDirection:Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector$Direction;

    goto :goto_1
.end method

.method private isCircleComplete()Z
    .locals 2

    .prologue
    .line 175
    iget v0, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->xSignChangeCount:I

    iget v1, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->ySignChangeCount:I

    add-int/2addr v0, v1

    .line 176
    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCircleCount()I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->circleCount:I

    return v0
.end method

.method public getDirection()Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector$Direction;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->currentDirection:Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector$Direction;

    return-object v0
.end method

.method public hasNewCircleComplete()Z
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->newCircleComplete:Z

    return v0
.end method

.method public reset(Landroid/graphics/Point;III)V
    .locals 2
    .param p1, "point"    # Landroid/graphics/Point;
    .param p2, "min"    # I
    .param p3, "max"    # I
    .param p4, "initialCircleCount"    # I

    .prologue
    const/4 v1, 0x0

    .line 75
    iput v1, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->xSignChangeCount:I

    .line 76
    iput v1, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->ySignChangeCount:I

    .line 78
    iget v0, p1, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iput v0, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->previousX:F

    .line 79
    iget v0, p1, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iput v0, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->previousY:F

    .line 81
    iput v1, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->previousXSign:I

    .line 82
    iput v1, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->previousYSign:I

    .line 84
    iput v1, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->currentXSign:I

    .line 85
    iput v1, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->currentYSign:I

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->isFirstMove:Z

    .line 89
    sget-object v0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector$Direction;->UNDEF:Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector$Direction;

    iput-object v0, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->currentDirection:Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector$Direction;

    .line 91
    iput p4, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->circleCount:I

    .line 92
    iput p2, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->min:I

    .line 93
    iput p3, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->max:I

    .line 95
    iput-boolean v1, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->newCircleComplete:Z

    .line 96
    return-void
.end method

.method public resetCircleCount(I)V
    .locals 0
    .param p1, "newCount"    # I

    .prologue
    .line 221
    iput p1, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->circleCount:I

    .line 223
    return-void
.end method

.method public shouldLockInScrubMode()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 184
    iget v1, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->xSignChangeCount:I

    iget v2, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->ySignChangeCount:I

    add-int/2addr v1, v2

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public trackSignChange(Landroid/graphics/Point;)I
    .locals 9
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x40800000    # 4.0f

    .line 106
    iget v4, p1, Landroid/graphics/Point;->x:I

    int-to-float v2, v4

    .line 107
    .local v2, "x":F
    iget v4, p1, Landroid/graphics/Point;->y:I

    int-to-float v3, v4

    .line 110
    .local v3, "y":F
    iget v4, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->previousX:F

    sub-float v0, v2, v4

    .line 111
    .local v0, "diffX":F
    iget v4, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->previousY:F

    sub-float v1, v3, v4

    .line 113
    .local v1, "diffY":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v7

    if-gez v4, :cond_0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v7

    if-gez v4, :cond_0

    .line 114
    iget v4, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->circleCount:I

    .line 171
    :goto_0
    return v4

    .line 117
    :cond_0
    cmpl-float v4, v0, v8

    if-lez v4, :cond_3

    move v4, v5

    :goto_1
    iput v4, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->currentXSign:I

    .line 118
    cmpl-float v4, v1, v8

    if-lez v4, :cond_4

    :goto_2
    iput v5, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->currentYSign:I

    .line 121
    iget-boolean v4, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->isFirstMove:Z

    if-eqz v4, :cond_5

    .line 122
    iput-boolean v6, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->isFirstMove:Z

    .line 123
    iget v4, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->currentXSign:I

    iput v4, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->previousXSign:I

    .line 124
    iget v4, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->currentYSign:I

    iput v4, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->previousYSign:I

    .line 146
    :goto_3
    iput v2, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->previousX:F

    .line 147
    iput v3, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->previousY:F

    .line 149
    invoke-direct {p0}, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->isCircleComplete()Z

    move-result v4

    iput-boolean v4, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->newCircleComplete:Z

    .line 150
    iget-boolean v4, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->newCircleComplete:Z

    if-eqz v4, :cond_1

    .line 151
    iput v6, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->ySignChangeCount:I

    iput v6, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->xSignChangeCount:I

    .line 152
    iget-object v4, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->currentDirection:Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector$Direction;

    sget-object v5, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector$Direction;->CLOCKWISE:Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector$Direction;

    if-ne v4, v5, :cond_8

    .line 153
    iget v4, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->circleCount:I

    iget v5, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->max:I

    if-ge v4, v5, :cond_1

    .line 154
    iget v4, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->circleCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->circleCount:I

    .line 165
    :cond_1
    :goto_4
    iget-object v4, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->currentDirection:Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector$Direction;

    sget-object v5, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector$Direction;->CLOCKWISE:Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector$Direction;

    if-ne v4, v5, :cond_9

    iget v4, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->circleCount:I

    iget v5, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->min:I

    add-int/lit8 v5, v5, 0x1

    if-ne v4, v5, :cond_9

    .line 166
    iget v4, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->circleCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->circleCount:I

    .line 171
    :cond_2
    :goto_5
    iget v4, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->circleCount:I

    goto :goto_0

    :cond_3
    move v4, v6

    .line 117
    goto :goto_1

    :cond_4
    move v5, v6

    .line 118
    goto :goto_2

    .line 129
    :cond_5
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v7

    if-lez v4, :cond_6

    .line 130
    iget v4, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->currentXSign:I

    iget v5, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->previousXSign:I

    if-eq v4, v5, :cond_6

    .line 131
    iget v4, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->currentXSign:I

    iput v4, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->previousXSign:I

    .line 132
    iget v4, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->xSignChangeCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->xSignChangeCount:I

    .line 136
    :cond_6
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v7

    if-lez v4, :cond_7

    .line 137
    iget v4, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->currentYSign:I

    iget v5, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->previousYSign:I

    if-eq v4, v5, :cond_7

    .line 138
    iget v4, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->currentYSign:I

    iput v4, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->previousYSign:I

    .line 139
    iget v4, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->ySignChangeCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->ySignChangeCount:I

    .line 143
    :cond_7
    invoke-direct {p0}, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->computeDirection()V

    goto :goto_3

    .line 158
    :cond_8
    iget v4, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->circleCount:I

    iget v5, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->min:I

    if-le v4, v5, :cond_1

    .line 159
    iget v4, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->circleCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->circleCount:I

    goto :goto_4

    .line 167
    :cond_9
    iget-object v4, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->currentDirection:Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector$Direction;

    sget-object v5, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector$Direction;->ANTI_CLOCKWISE:Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector$Direction;

    if-ne v4, v5, :cond_2

    iget v4, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->circleCount:I

    iget v5, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->max:I

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_2

    .line 168
    iget v4, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->circleCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->circleCount:I

    goto :goto_5
.end method
