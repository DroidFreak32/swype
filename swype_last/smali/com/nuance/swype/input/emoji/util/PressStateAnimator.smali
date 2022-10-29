.class public Lcom/nuance/swype/input/emoji/util/PressStateAnimator;
.super Ljava/lang/Object;
.source "PressStateAnimator.java"

# interfaces
.implements Lcom/facebook/rebound/SpringListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Builder;,
        Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;,
        Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Listener;
    }
.end annotation


# static fields
.field private static final BASE_RADIAN_COS_MOVEMENT:D = 4.71238898038469

.field private static final COS_MOVEMENT_RANGE:D = 3.141592653589793

.field private static final ROTATION_RANGE:F = 360.0f

.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;

.field private static final rotationCount:F = 1.0f

.field private static final springSystem:Lcom/facebook/rebound/BaseSpringSystem;


# instance fields
.field private activeSpringCount:I

.field private final animationState:Lcom/nuance/swype/input/emoji/util/AnimationState;

.field private dx:I

.field private dy:I

.field private final horMovementRange:F

.field private final listener:Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Listener;

.field private final params:Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;

.field private popupSpring:Lcom/facebook/rebound/Spring;

.field private pressSpring:Lcom/facebook/rebound/Spring;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const-string/jumbo v0, "PressStateAnimator"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->log:Lcom/nuance/swype/util/LogManager$Log;

    .line 194
    invoke-static {}, Lcom/facebook/rebound/SpringSystem;->create()Lcom/facebook/rebound/SpringSystem;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->springSystem:Lcom/facebook/rebound/BaseSpringSystem;

    return-void
.end method

.method private constructor <init>(Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Listener;Lcom/nuance/swype/input/emoji/util/AnimationState;Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;)V
    .registers 8
    .param p1, "listener"    # Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Listener;
    .param p2, "animationState"    # Lcom/nuance/swype/input/emoji/util/AnimationState;
    .param p3, "params"    # Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 379
    iput v2, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->activeSpringCount:I

    .line 165
    iput-object p1, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->listener:Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Listener;

    .line 166
    iput-object p2, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->animationState:Lcom/nuance/swype/input/emoji/util/AnimationState;

    .line 167
    iput-object p3, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->params:Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;

    .line 168
    iget v0, p3, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;->width:I

    int-to-float v0, v0

    iget v1, p3, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;->horMovementFactor:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->horMovementRange:F

    .line 171
    iget-object v0, p3, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;->end:[I

    aget v0, v0, v2

    iget-object v1, p3, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;->begin:[I

    aget v1, v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->dx:I

    .line 172
    iget-object v0, p3, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;->end:[I

    aget v0, v0, v3

    iget-object v1, p3, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;->begin:[I

    aget v1, v1, v3

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->dy:I

    .line 174
    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Listener;Lcom/nuance/swype/input/emoji/util/AnimationState;Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;Lcom/nuance/swype/input/emoji/util/PressStateAnimator$1;)V
    .registers 5
    .param p1, "x0"    # Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Listener;
    .param p2, "x1"    # Lcom/nuance/swype/input/emoji/util/AnimationState;
    .param p3, "x2"    # Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;
    .param p4, "x3"    # Lcom/nuance/swype/input/emoji/util/PressStateAnimator$1;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;-><init>(Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Listener;Lcom/nuance/swype/input/emoji/util/AnimationState;Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;)V

    return-void
.end method

.method private clearSprings()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 224
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->pressSpring:Lcom/facebook/rebound/Spring;

    if-eqz v0, :cond_c

    .line 225
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->pressSpring:Lcom/facebook/rebound/Spring;

    invoke-virtual {v0}, Lcom/facebook/rebound/Spring;->destroy()V

    .line 226
    iput-object v1, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->pressSpring:Lcom/facebook/rebound/Spring;

    .line 229
    :cond_c
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->popupSpring:Lcom/facebook/rebound/Spring;

    if-eqz v0, :cond_17

    .line 230
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->popupSpring:Lcom/facebook/rebound/Spring;

    invoke-virtual {v0}, Lcom/facebook/rebound/Spring;->destroy()V

    .line 231
    iput-object v1, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->popupSpring:Lcom/facebook/rebound/Spring;

    .line 233
    :cond_17
    return-void
.end method

.method private initPopoupSpring()V
    .registers 3

    .prologue
    .line 207
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->popupSpring:Lcom/facebook/rebound/Spring;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->params:Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;

    iget-boolean v0, v0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;->enableShortPressPopup:Z

    if-nez v0, :cond_b

    .line 214
    :cond_a
    :goto_a
    return-void

    .line 210
    :cond_b
    sget-object v0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->springSystem:Lcom/facebook/rebound/BaseSpringSystem;

    invoke-virtual {v0}, Lcom/facebook/rebound/BaseSpringSystem;->createSpring()Lcom/facebook/rebound/Spring;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->params:Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;

    iget-object v1, v1, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;->popupSpringConfig:Lcom/facebook/rebound/SpringConfig;

    .line 211
    invoke-virtual {v0, v1}, Lcom/facebook/rebound/Spring;->setSpringConfig(Lcom/facebook/rebound/SpringConfig;)Lcom/facebook/rebound/Spring;

    move-result-object v0

    .line 212
    invoke-virtual {v0, p0}, Lcom/facebook/rebound/Spring;->addListener(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/Spring;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->popupSpring:Lcom/facebook/rebound/Spring;

    goto :goto_a
.end method

.method private initPressSpring()V
    .registers 3

    .prologue
    .line 197
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->pressSpring:Lcom/facebook/rebound/Spring;

    if-eqz v0, :cond_5

    .line 204
    :goto_4
    return-void

    .line 200
    :cond_5
    sget-object v0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->springSystem:Lcom/facebook/rebound/BaseSpringSystem;

    invoke-virtual {v0}, Lcom/facebook/rebound/BaseSpringSystem;->createSpring()Lcom/facebook/rebound/Spring;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->params:Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;

    iget-object v1, v1, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;->pressSpringConfig:Lcom/facebook/rebound/SpringConfig;

    .line 201
    invoke-virtual {v0, v1}, Lcom/facebook/rebound/Spring;->setSpringConfig(Lcom/facebook/rebound/SpringConfig;)Lcom/facebook/rebound/Spring;

    move-result-object v0

    .line 202
    invoke-virtual {v0, p0}, Lcom/facebook/rebound/Spring;->addListener(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/Spring;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->pressSpring:Lcom/facebook/rebound/Spring;

    goto :goto_4
.end method

.method private initSprings()V
    .registers 1

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->initPressSpring()V

    .line 218
    invoke-direct {p0}, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->initPopoupSpring()V

    .line 219
    return-void
.end method

.method private updateMatrix(DDZ)V
    .registers 25
    .param p1, "pressProg"    # D
    .param p3, "popupProg"    # D
    .param p5, "isPressed"    # Z

    .prologue
    .line 249
    const/high16 v17, 0x3f800000    # 1.0f

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/16 v8, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->params:Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;

    iget v2, v2, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;->pressScaleAdd:F

    float-to-double v10, v2

    move-wide/from16 v2, p1

    invoke-static/range {v2 .. v11}, Lcom/facebook/rebound/SpringUtil;->mapValueFromRangeToRange(DDDDD)D

    move-result-wide v2

    double-to-float v2, v2

    add-float v17, v17, v2

    .line 253
    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/16 v8, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->params:Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;

    iget v2, v2, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;->popupScaleAdd:F

    float-to-double v10, v2

    move-wide/from16 v2, p3

    invoke-static/range {v2 .. v11}, Lcom/facebook/rebound/SpringUtil;->mapValueFromRangeToRange(DDDDD)D

    move-result-wide v2

    double-to-float v2, v2

    add-float v13, v17, v2

    .line 257
    .local v13, "scale":F
    move-wide/from16 v0, p3

    double-to-float v2, v0

    const/high16 v3, 0x43b40000    # 360.0f

    mul-float v12, v2, v3

    .line 260
    .local v12, "rotate":F
    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double v2, v2, p3

    const-wide v4, 0x4012d97c7f3321d2L    # 4.71238898038469

    add-double/2addr v2, v4

    .line 261
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->horMovementRange:F

    float-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-float v0, v2

    move/from16 v16, v0

    .line 262
    .local v16, "xAdjust":F
    if-eqz p5, :cond_56

    .line 263
    move/from16 v0, v16

    neg-float v0, v0

    move/from16 v16, v0

    .line 267
    :cond_56
    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/16 v8, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->dx:I

    int-to-double v10, v2

    move-wide/from16 v2, p3

    invoke-static/range {v2 .. v11}, Lcom/facebook/rebound/SpringUtil;->mapValueFromRangeToRange(DDDDD)D

    move-result-wide v2

    double-to-float v2, v2

    add-float v14, v2, v16

    .line 269
    .local v14, "transX":F
    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/16 v8, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->dy:I

    int-to-double v10, v2

    move-wide/from16 v2, p3

    invoke-static/range {v2 .. v11}, Lcom/facebook/rebound/SpringUtil;->mapValueFromRangeToRange(DDDDD)D

    move-result-wide v2

    double-to-float v15, v2

    .line 272
    .local v15, "transY":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->animationState:Lcom/nuance/swype/input/emoji/util/AnimationState;

    invoke-virtual {v2, v12, v13, v14, v15}, Lcom/nuance/swype/input/emoji/util/AnimationState;->transform(FFFF)V

    .line 273
    return-void
.end method


# virtual methods
.method public final adjustEndDelta(II)V
    .registers 9
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 187
    iget-object v2, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->params:Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;

    iget-object v2, v2, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;->end:[I

    aget v2, v2, v4

    iget-object v3, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->params:Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;

    iget-object v3, v3, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;->begin:[I

    aget v3, v3, v4

    sub-int v0, v2, v3

    .line 188
    .local v0, "deltaX":I
    iget-object v2, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->params:Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;

    iget-object v2, v2, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;->end:[I

    aget v2, v2, v5

    iget-object v3, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->params:Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;

    iget-object v3, v3, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;->begin:[I

    aget v3, v3, v5

    sub-int v1, v2, v3

    .line 190
    .local v1, "deltaY":I
    add-int v2, v0, p1

    iput v2, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->dx:I

    .line 191
    add-int v2, v1, p2

    iput v2, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->dy:I

    .line 192
    return-void
.end method

.method public getAnimState()Lcom/nuance/swype/input/emoji/util/AnimationState;
    .registers 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->animationState:Lcom/nuance/swype/input/emoji/util/AnimationState;

    return-object v0
.end method

.method public getCurBounds(IIII)[I
    .registers 13
    .param p1, "leftPad"    # I
    .param p2, "topPad"    # I
    .param p3, "rightPad"    # I
    .param p4, "botPad"    # I

    .prologue
    .line 307
    add-int v6, p1, p3

    .line 308
    .local v6, "horPad":I
    add-int v7, p2, p4

    .line 311
    .local v7, "verPad":I
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->animationState:Lcom/nuance/swype/input/emoji/util/AnimationState;

    neg-int v1, p1

    neg-int v2, p2

    iget-object v3, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->params:Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;

    iget v3, v3, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;->width:I

    add-int/2addr v3, v6

    iget-object v4, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->params:Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;

    iget v4, v4, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;->height:I

    add-int/2addr v4, v7

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/swype/input/emoji/util/AnimationState;->map(IIII[I)[I

    move-result-object v0

    .line 313
    return-object v0
.end method

.method public getDeltaX()F
    .registers 2

    .prologue
    .line 177
    iget v0, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->dx:I

    int-to-float v0, v0

    return v0
.end method

.method public getDeltaY()F
    .registers 2

    .prologue
    .line 181
    iget v0, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->dy:I

    int-to-float v0, v0

    return v0
.end method

.method public getEndBounds()[I
    .registers 10

    .prologue
    const/4 v8, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 328
    const/4 v6, 0x1

    move-object v1, p0

    move-wide v4, v2

    invoke-direct/range {v1 .. v6}, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->updateMatrix(DDZ)V

    .line 329
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->animationState:Lcom/nuance/swype/input/emoji/util/AnimationState;

    iget-object v1, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->params:Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;

    iget v3, v1, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;->width:I

    iget-object v1, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->params:Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;

    iget v4, v1, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;->height:I

    const/4 v5, 0x0

    move v1, v8

    move v2, v8

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/swype/input/emoji/util/AnimationState;->map(IIII[I)[I

    move-result-object v7

    .line 330
    .local v7, "out":[I
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->animationState:Lcom/nuance/swype/input/emoji/util/AnimationState;

    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/util/AnimationState;->reset()V

    .line 331
    return-object v7
.end method

.method public getEndBounds(IIII)[I
    .registers 12
    .param p1, "leftPad"    # I
    .param p2, "topPad"    # I
    .param p3, "rightPad"    # I
    .param p4, "botPad"    # I

    .prologue
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 322
    const/4 v6, 0x1

    move-object v1, p0

    move-wide v4, v2

    invoke-direct/range {v1 .. v6}, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->updateMatrix(DDZ)V

    .line 323
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->getCurBounds(IIII)[I

    move-result-object v0

    .line 324
    .local v0, "out":[I
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->animationState:Lcom/nuance/swype/input/emoji/util/AnimationState;

    invoke-virtual {v1}, Lcom/nuance/swype/input/emoji/util/AnimationState;->reset()V

    .line 325
    return-object v0
.end method

.method public getInvertedScale()F
    .registers 3

    .prologue
    .line 283
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->animationState:Lcom/nuance/swype/input/emoji/util/AnimationState;

    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/util/AnimationState;->getScale()F

    move-result v0

    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->getScaleEnd()F

    move-result v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getInvertedScaleStart()F
    .registers 3

    .prologue
    .line 290
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->getScaleEnd()F

    move-result v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getPopupProg()D
    .registers 3

    .prologue
    .line 372
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->popupSpring:Lcom/facebook/rebound/Spring;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->popupSpring:Lcom/facebook/rebound/Spring;

    invoke-virtual {v0}, Lcom/facebook/rebound/Spring;->getCurrentValue()D

    move-result-wide v0

    :goto_a
    return-wide v0

    :cond_b
    const-wide/16 v0, 0x0

    goto :goto_a
.end method

.method public getPressProg()D
    .registers 3

    .prologue
    .line 376
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->pressSpring:Lcom/facebook/rebound/Spring;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->pressSpring:Lcom/facebook/rebound/Spring;

    invoke-virtual {v0}, Lcom/facebook/rebound/Spring;->getCurrentValue()D

    move-result-wide v0

    :goto_a
    return-wide v0

    :cond_b
    const-wide/16 v0, 0x0

    goto :goto_a
.end method

.method public getScaleEnd()F
    .registers 4

    .prologue
    .line 295
    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v2, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->params:Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;

    iget v2, v2, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;->pressScaleAdd:F

    add-float v0, v1, v2

    .line 296
    .local v0, "max":F
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->params:Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;

    iget-boolean v1, v1, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;->enableShortPressPopup:Z

    if-eqz v1, :cond_13

    .line 297
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->params:Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;

    iget v1, v1, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;->popupScaleAdd:F

    add-float/2addr v0, v1

    .line 299
    :cond_13
    return v0
.end method

.method public getStartBounds()[I
    .registers 10

    .prologue
    const/4 v8, 0x0

    const-wide/16 v2, 0x0

    .line 346
    const/4 v6, 0x1

    move-object v1, p0

    move-wide v4, v2

    invoke-direct/range {v1 .. v6}, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->updateMatrix(DDZ)V

    .line 347
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->animationState:Lcom/nuance/swype/input/emoji/util/AnimationState;

    iget-object v1, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->params:Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;

    iget v3, v1, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;->width:I

    iget-object v1, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->params:Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;

    iget v4, v1, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;->height:I

    const/4 v5, 0x0

    move v1, v8

    move v2, v8

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/swype/input/emoji/util/AnimationState;->map(IIII[I)[I

    move-result-object v7

    .line 348
    .local v7, "out":[I
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->animationState:Lcom/nuance/swype/input/emoji/util/AnimationState;

    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/util/AnimationState;->reset()V

    .line 349
    return-object v7
.end method

.method public getStartBounds(IIII)[I
    .registers 12
    .param p1, "leftPad"    # I
    .param p2, "topPad"    # I
    .param p3, "rightPad"    # I
    .param p4, "botPad"    # I

    .prologue
    const-wide/16 v2, 0x0

    .line 340
    const/4 v6, 0x1

    move-object v1, p0

    move-wide v4, v2

    invoke-direct/range {v1 .. v6}, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->updateMatrix(DDZ)V

    .line 341
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->getCurBounds(IIII)[I

    move-result-object v0

    .line 342
    .local v0, "out":[I
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->animationState:Lcom/nuance/swype/input/emoji/util/AnimationState;

    invoke-virtual {v1}, Lcom/nuance/swype/input/emoji/util/AnimationState;->reset()V

    .line 343
    return-object v0
.end method

.method public isPopupActive()Z
    .registers 5

    .prologue
    .line 368
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->popupSpring:Lcom/facebook/rebound/Spring;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->popupSpring:Lcom/facebook/rebound/Spring;

    invoke-virtual {v0}, Lcom/facebook/rebound/Spring;->isAtRest()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->popupSpring:Lcom/facebook/rebound/Spring;

    invoke-virtual {v0}, Lcom/facebook/rebound/Spring;->getCurrentValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public onSpringActivate(Lcom/facebook/rebound/Spring;)V
    .registers 7
    .param p1, "spring"    # Lcom/facebook/rebound/Spring;

    .prologue
    const/4 v4, 0x1

    .line 394
    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->getEndValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1a

    .line 395
    iget v0, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->activeSpringCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->activeSpringCount:I

    .line 396
    iget v0, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->activeSpringCount:I

    if-ne v0, v4, :cond_1a

    .line 398
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->listener:Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Listener;

    invoke-interface {v0, p0, v4}, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Listener;->onAnimStateChanged(Lcom/nuance/swype/input/emoji/util/PressStateAnimator;Z)V

    .line 401
    :cond_1a
    return-void
.end method

.method public onSpringAtRest(Lcom/facebook/rebound/Spring;)V
    .registers 6
    .param p1, "spring"    # Lcom/facebook/rebound/Spring;

    .prologue
    .line 383
    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->getEndValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1b

    .line 384
    iget v0, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->activeSpringCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->activeSpringCount:I

    if-nez v0, :cond_1b

    .line 386
    invoke-direct {p0}, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->clearSprings()V

    .line 387
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->listener:Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Listener;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Listener;->onAnimStateChanged(Lcom/nuance/swype/input/emoji/util/PressStateAnimator;Z)V

    .line 390
    :cond_1b
    return-void
.end method

.method public onSpringEndStateChange(Lcom/facebook/rebound/Spring;)V
    .registers 3
    .param p1, "spring"    # Lcom/facebook/rebound/Spring;

    .prologue
    .line 405
    iget v0, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->activeSpringCount:I

    if-nez v0, :cond_d

    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->isAtRest()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 409
    invoke-direct {p0}, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->clearSprings()V

    .line 411
    :cond_d
    return-void
.end method

.method public onSpringUpdate(Lcom/facebook/rebound/Spring;)V
    .registers 9
    .param p1, "spring"    # Lcom/facebook/rebound/Spring;

    .prologue
    const-wide/16 v0, 0x0

    .line 354
    iget-object v2, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->popupSpring:Lcom/facebook/rebound/Spring;

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->popupSpring:Lcom/facebook/rebound/Spring;

    invoke-virtual {v2}, Lcom/facebook/rebound/Spring;->getCurrentValue()D

    move-result-wide v4

    .line 355
    .local v4, "popupProg":D
    :goto_c
    iget-object v2, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->pressSpring:Lcom/facebook/rebound/Spring;

    if-eqz v2, :cond_2a

    .line 356
    iget-object v2, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->pressSpring:Lcom/facebook/rebound/Spring;

    invoke-virtual {v2}, Lcom/facebook/rebound/Spring;->getEndValue()D

    move-result-wide v2

    cmpl-double v0, v2, v0

    if-eqz v0, :cond_2d

    const/4 v6, 0x1

    .line 357
    .local v6, "isPressed":Z
    :goto_1b
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->pressSpring:Lcom/facebook/rebound/Spring;

    invoke-virtual {v0}, Lcom/facebook/rebound/Spring;->getCurrentValue()D

    move-result-wide v2

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->updateMatrix(DDZ)V

    .line 358
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->listener:Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Listener;

    invoke-interface {v0, p0}, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Listener;->onAnimUpdate(Lcom/nuance/swype/input/emoji/util/PressStateAnimator;)V

    .line 360
    .end local v6    # "isPressed":Z
    :cond_2a
    return-void

    .end local v4    # "popupProg":D
    :cond_2b
    move-wide v4, v0

    .line 354
    goto :goto_c

    .line 356
    .restart local v4    # "popupProg":D
    :cond_2d
    const/4 v6, 0x0

    goto :goto_1b
.end method

.method public setPressState(Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;)V
    .registers 8
    .param p1, "state"    # Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/16 v2, 0x0

    .line 414
    sget-object v0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$1;->$SwitchMap$com$nuance$swype$input$emoji$finger$FingerInfo$PressState:[I

    invoke-virtual {p1}, Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_50

    .line 447
    :cond_f
    :goto_f
    return-void

    .line 417
    :pswitch_10
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->listener:Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Listener;

    invoke-interface {v0, p0, p1}, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Listener;->onAnimPressState(Lcom/nuance/swype/input/emoji/util/PressStateAnimator;Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;)V

    .line 418
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->pressSpring:Lcom/facebook/rebound/Spring;

    if-eqz v0, :cond_1e

    .line 419
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->pressSpring:Lcom/facebook/rebound/Spring;

    invoke-virtual {v0, v2, v3}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    .line 421
    :cond_1e
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->popupSpring:Lcom/facebook/rebound/Spring;

    if-eqz v0, :cond_f

    .line 422
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->popupSpring:Lcom/facebook/rebound/Spring;

    invoke-virtual {v0, v2, v3}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    goto :goto_f

    .line 427
    :pswitch_28
    invoke-direct {p0}, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->initSprings()V

    .line 428
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->listener:Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Listener;

    invoke-interface {v0, p0, p1}, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Listener;->onAnimPressState(Lcom/nuance/swype/input/emoji/util/PressStateAnimator;Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;)V

    .line 429
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->pressSpring:Lcom/facebook/rebound/Spring;

    if-eqz v0, :cond_f

    .line 430
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->pressSpring:Lcom/facebook/rebound/Spring;

    invoke-virtual {v0, v4, v5}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    goto :goto_f

    .line 435
    :pswitch_3a
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->params:Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;

    iget-boolean v0, v0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;->enableShortPressPopup:Z

    if-eqz v0, :cond_f

    .line 436
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->listener:Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Listener;

    invoke-interface {v0, p0, p1}, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Listener;->onAnimPressState(Lcom/nuance/swype/input/emoji/util/PressStateAnimator;Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;)V

    .line 437
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->popupSpring:Lcom/facebook/rebound/Spring;

    if-eqz v0, :cond_f

    .line 438
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->popupSpring:Lcom/facebook/rebound/Spring;

    invoke-virtual {v0, v4, v5}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    goto :goto_f

    .line 414
    nop

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_10
        :pswitch_28
        :pswitch_3a
    .end packed-switch
.end method
