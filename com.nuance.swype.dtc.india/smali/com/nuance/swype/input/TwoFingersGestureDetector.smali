.class public Lcom/nuance/swype/input/TwoFingersGestureDetector;
.super Ljava/lang/Object;
.source "TwoFingersGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;,
        Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;,
        Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureListener;
    }
.end annotation


# instance fields
.field private final MAX_SCROLL_OFFSET:F

.field private final MIN_LEFT_RIGHT_GESTURE_DISTANCE:F

.field private final MIN_SCROLL_DISTANCE:F

.field private final MIN_UP_DOWN_GESTURE_DISTANCE:F

.field private mDetectingGesture:Z

.field private mFirstFinger:Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;

.field private mGestureDetectionNotification:Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;

.field private mGestureListener:Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureListener;

.field private mSecondFinger:Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyboardWidth"    # I
    .param p3, "keyboardHeight"    # I

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    sget-object v1, Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;->NONE:Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;

    iput-object v1, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector;->mGestureDetectionNotification:Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;

    .line 196
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 199
    .local v0, "density":F
    const/high16 v1, 0x41a00000    # 20.0f

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector;->MIN_SCROLL_DISTANCE:F

    .line 202
    const/high16 v1, 0x42700000    # 60.0f

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector;->MAX_SCROLL_OFFSET:F

    .line 205
    const/high16 v1, 0x42f00000    # 120.0f

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector;->MIN_LEFT_RIGHT_GESTURE_DISTANCE:F

    .line 206
    int-to-float v1, p3

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector;->MIN_UP_DOWN_GESTURE_DISTANCE:F

    .line 207
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/TwoFingersGestureDetector;)F
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/TwoFingersGestureDetector;

    .prologue
    .line 10
    iget v0, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector;->MIN_SCROLL_DISTANCE:F

    return v0
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/TwoFingersGestureDetector;)F
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/TwoFingersGestureDetector;

    .prologue
    .line 10
    iget v0, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector;->MAX_SCROLL_OFFSET:F

    return v0
.end method

.method static synthetic access$200(Lcom/nuance/swype/input/TwoFingersGestureDetector;)F
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/TwoFingersGestureDetector;

    .prologue
    .line 10
    iget v0, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector;->MIN_UP_DOWN_GESTURE_DISTANCE:F

    return v0
.end method

.method static synthetic access$300(Lcom/nuance/swype/input/TwoFingersGestureDetector;)F
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/TwoFingersGestureDetector;

    .prologue
    .line 10
    iget v0, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector;->MIN_LEFT_RIGHT_GESTURE_DISTANCE:F

    return v0
.end method

.method private addPoint(IFF)V
    .locals 1
    .param p1, "pointerId"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 214
    iget-object v0, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector;->mFirstFinger:Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;

    if-eqz v0, :cond_0

    .line 215
    if-nez p1, :cond_1

    .line 216
    iget-object v0, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector;->mFirstFinger:Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;

    invoke-virtual {v0, p2, p3}, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->addPoint(FF)V

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector;->mSecondFinger:Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector;->mSecondFinger:Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;

    invoke-virtual {v0, p2, p3}, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->addPoint(FF)V

    goto :goto_0
.end method

.method private detectingGesture()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 269
    iget-object v0, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector;->mFirstFinger:Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector;->mSecondFinger:Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector;->mFirstFinger:Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;

    invoke-virtual {v0}, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->isMovingDown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector;->mSecondFinger:Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;

    invoke-virtual {v0}, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->isMovingDown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 271
    iput-boolean v1, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector;->mDetectingGesture:Z

    .line 273
    iget-object v0, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector;->mFirstFinger:Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;

    invoke-virtual {v0}, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->isGestureDown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector;->mSecondFinger:Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;

    invoke-virtual {v0}, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->isGestureDown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    sget-object v0, Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;->DOWN:Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;

    iput-object v0, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector;->mGestureDetectionNotification:Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector;->mFirstFinger:Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;

    invoke-virtual {v0}, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->isMovingUp()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector;->mSecondFinger:Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;

    invoke-virtual {v0}, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->isMovingUp()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 277
    iput-boolean v1, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector;->mDetectingGesture:Z

    .line 279
    iget-object v0, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector;->mFirstFinger:Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;

    invoke-virtual {v0}, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->isGestureUp()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector;->mSecondFinger:Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;

    invoke-virtual {v0}, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->isGestureUp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    sget-object v0, Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;->UP:Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;

    iput-object v0, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector;->mGestureDetectionNotification:Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;

    goto :goto_0

    .line 282
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector;->mFirstFinger:Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;

    invoke-virtual {v0}, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->isMovingRight()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector;->mSecondFinger:Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;

    invoke-virtual {v0}, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->isMovingRight()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 283
    iput-boolean v1, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector;->mDetectingGesture:Z

    .line 285
    iget-object v0, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector;->mFirstFinger:Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;

    invoke-virtual {v0}, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->isGestureRight()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector;->mSecondFinger:Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;

    invoke-virtual {v0}, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->isGestureRight()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    sget-object v0, Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;->RIGHT:Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;

    iput-object v0, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector;->mGestureDetectionNotification:Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;

    goto :goto_0

    .line 288
    :cond_3
    iget-object v0, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector;->mFirstFinger:Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;

    invoke-virtual {v0}, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->isMovingLeft()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector;->mSecondFinger:Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;

    invoke-virtual {v0}, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->isMovingLeft()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 289
    iput-boolean v1, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector;->mDetectingGesture:Z

    .line 291
    iget-object v0, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector;->mFirstFinger:Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;

    invoke-virtual {v0}, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->isGestureLeft()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector;->mSecondFinger:Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;

    invoke-virtual {v0}, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->isGestureLeft()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    sget-object v0, Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;->LEFT:Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;

    iput-object v0, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector;->mGestureDetectionNotification:Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;

    goto :goto_0

    .line 294
    :cond_4
    iget-object v0, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector;->mFirstFinger:Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;

    invoke-virtual {v0}, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->isMovingRight()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector;->mSecondFinger:Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;

    invoke-virtual {v0}, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->isMovingLeft()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 295
    iput-boolean v1, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector;->mDetectingGesture:Z

    .line 298
    iget-object v0, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector;->mFirstFinger:Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;

    invoke-virtual {v0}, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->getEndPoint()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector;->mSecondFinger:Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;

    invoke-virtual {v1}, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->getEndPoint()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    if-ge v0, v1, :cond_5

    .line 299
    sget-object v0, Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;->HORIZONTAL_PINCH:Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;

    iput-object v0, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector;->mGestureDetectionNotification:Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;

    goto/16 :goto_0

    .line 302
    :cond_5
    sget-object v0, Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;->HORIZONTAL_SPREAD:Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;

    iput-object v0, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector;->mGestureDetectionNotification:Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;

    goto/16 :goto_0

    .line 304
    :cond_6
    iget-object v0, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector;->mFirstFinger:Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;

    invoke-virtual {v0}, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->isMovingLeft()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector;->mSecondFinger:Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;

    invoke-virtual {v0}, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->isMovingRight()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    iput-boolean v1, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector;->mDetectingGesture:Z

    .line 307
    iget-object v0, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector;->mFirstFinger:Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;

    invoke-virtual {v0}, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->getEndPoint()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector;->mSecondFinger:Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;

    invoke-virtual {v1}, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->getEndPoint()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    if-le v0, v1, :cond_7

    .line 308
    sget-object v0, Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;->HORIZONTAL_PINCH:Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;

    iput-object v0, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector;->mGestureDetectionNotification:Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;

    goto/16 :goto_0

    .line 310
    :cond_7
    sget-object v0, Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;->HORIZONTAL_SPREAD:Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;

    iput-object v0, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector;->mGestureDetectionNotification:Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;

    goto/16 :goto_0
.end method

.method private notifyGestureDetection()V
    .locals 3

    .prologue
    .line 227
    iget-object v0, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector;->mGestureListener:Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureListener;

    if-eqz v0, :cond_0

    .line 228
    sget-object v0, Lcom/nuance/swype/input/TwoFingersGestureDetector$1;->$SwitchMap$com$nuance$swype$input$TwoFingersGestureDetector$GestureDetectionNotification:[I

    iget-object v1, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector;->mGestureDetectionNotification:Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;

    invoke-virtual {v1}, Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 230
    :pswitch_0
    iget-object v0, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector;->mGestureListener:Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureListener;

    invoke-interface {v0}, Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureListener;->onGestureUp()V

    goto :goto_0

    .line 234
    :pswitch_1
    iget-object v0, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector;->mGestureListener:Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureListener;

    invoke-interface {v0}, Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureListener;->onGestureDown()V

    goto :goto_0

    .line 238
    :pswitch_2
    iget-object v0, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector;->mGestureListener:Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureListener;

    invoke-interface {v0}, Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureListener;->onGestureLeft()V

    goto :goto_0

    .line 242
    :pswitch_3
    iget-object v0, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector;->mGestureListener:Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureListener;

    invoke-interface {v0}, Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureListener;->onGestureRight()V

    goto :goto_0

    .line 246
    :pswitch_4
    iget-object v0, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector;->mGestureListener:Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureListener;

    iget-object v1, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector;->mFirstFinger:Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;

    invoke-virtual {v1}, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->getEndPoint()Landroid/graphics/Point;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector;->mSecondFinger:Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;

    .line 247
    invoke-virtual {v2}, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->getEndPoint()Landroid/graphics/Point;

    move-result-object v2

    .line 246
    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureListener;->onGestureHorizonalPinch(Landroid/graphics/Point;Landroid/graphics/Point;)V

    goto :goto_0

    .line 251
    :pswitch_5
    iget-object v0, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector;->mGestureListener:Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureListener;

    iget-object v1, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector;->mFirstFinger:Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;

    invoke-virtual {v1}, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->getEndPoint()Landroid/graphics/Point;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector;->mSecondFinger:Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;

    .line 252
    invoke-virtual {v2}, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->getEndPoint()Landroid/graphics/Point;

    move-result-object v2

    .line 251
    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureListener;->onGestureHorizontalSpread(Landroid/graphics/Point;Landroid/graphics/Point;)V

    goto :goto_0

    .line 228
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 262
    iput-object v0, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector;->mFirstFinger:Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;

    .line 263
    iput-object v0, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector;->mSecondFinger:Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;

    .line 264
    sget-object v0, Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;->NONE:Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;

    iput-object v0, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector;->mGestureDetectionNotification:Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;

    .line 265
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector;->mDetectingGesture:Z

    .line 266
    return-void
.end method


# virtual methods
.method public getCurrentGesture()Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector;->mGestureDetectionNotification:Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;

    return-object v0
.end method

.method public getFirstFingerCurrent()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector;->mFirstFinger:Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;

    invoke-virtual {v0}, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->getEndPoint()Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public getSecondFingerCurrent()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector;->mSecondFinger:Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;

    invoke-virtual {v0}, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->getEndPoint()Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public isGesturingDetected()Z
    .locals 1

    .prologue
    .line 325
    iget-boolean v0, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector;->mDetectingGesture:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 333
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 334
    .local v0, "action":I
    and-int/lit16 v1, v0, 0xff

    .line 335
    .local v1, "actionCode":I
    shr-int/lit8 v7, v0, 0x8

    .line 336
    .local v7, "pointerIndex":I
    invoke-static {p1, v7}, Lcom/nuance/swype/input/MotionEventWrapper;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v6

    .line 338
    .local v6, "pointerId":I
    packed-switch v1, :pswitch_data_0

    .line 386
    :cond_0
    :goto_0
    :pswitch_0
    invoke-direct {p0}, Lcom/nuance/swype/input/TwoFingersGestureDetector;->detectingGesture()V

    .line 388
    const/4 v11, 0x1

    if-ne v1, v11, :cond_1

    iget-object v11, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector;->mGestureDetectionNotification:Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;

    sget-object v12, Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;->NONE:Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;

    if-eq v11, v12, :cond_1

    .line 390
    invoke-direct {p0}, Lcom/nuance/swype/input/TwoFingersGestureDetector;->notifyGestureDetection()V

    .line 391
    invoke-direct {p0}, Lcom/nuance/swype/input/TwoFingersGestureDetector;->reset()V

    .line 394
    :cond_1
    iget-boolean v11, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector;->mDetectingGesture:Z

    return v11

    .line 340
    :pswitch_1
    invoke-direct {p0}, Lcom/nuance/swype/input/TwoFingersGestureDetector;->reset()V

    .line 341
    new-instance v11, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;

    invoke-direct {v11, p0, v6}, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;-><init>(Lcom/nuance/swype/input/TwoFingersGestureDetector;I)V

    iput-object v11, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector;->mFirstFinger:Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;

    .line 342
    iget-object v11, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector;->mFirstFinger:Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;

    invoke-static {p1, v7}, Lcom/nuance/swype/input/MotionEventWrapper;->getX(Landroid/view/MotionEvent;I)F

    move-result v12

    .line 343
    invoke-static {p1, v7}, Lcom/nuance/swype/input/MotionEventWrapper;->getY(Landroid/view/MotionEvent;I)F

    move-result v13

    .line 342
    invoke-virtual {v11, v12, v13}, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->addPoint(FF)V

    goto :goto_0

    .line 351
    :pswitch_2
    new-instance v11, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;

    invoke-direct {v11, p0, v6}, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;-><init>(Lcom/nuance/swype/input/TwoFingersGestureDetector;I)V

    iput-object v11, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector;->mSecondFinger:Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;

    .line 352
    iget-object v11, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector;->mSecondFinger:Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;

    invoke-static {p1, v7}, Lcom/nuance/swype/input/MotionEventWrapper;->getX(Landroid/view/MotionEvent;I)F

    move-result v12

    .line 353
    invoke-static {p1, v7}, Lcom/nuance/swype/input/MotionEventWrapper;->getY(Landroid/view/MotionEvent;I)F

    move-result v13

    .line 352
    invoke-virtual {v11, v12, v13}, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->addPoint(FF)V

    goto :goto_0

    .line 357
    :pswitch_3
    invoke-static {p1}, Lcom/nuance/swype/input/MotionEventWrapper;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v5

    .line 358
    .local v5, "pointerCount":I
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_1
    if-ge v4, v5, :cond_0

    .line 360
    invoke-static {p1, v4}, Lcom/nuance/swype/input/MotionEventWrapper;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v8

    .line 361
    .local v8, "thisPointerId":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v2

    .line 364
    .local v2, "histories":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v2, :cond_2

    .line 365
    invoke-static {p1, v4, v3}, Lcom/nuance/swype/input/MotionEventWrapper;->getHistoricalX(Landroid/view/MotionEvent;II)F

    move-result v9

    .line 366
    .local v9, "x":F
    invoke-static {p1, v4, v3}, Lcom/nuance/swype/input/MotionEventWrapper;->getHistoricalY(Landroid/view/MotionEvent;II)F

    move-result v10

    .line 367
    .local v10, "y":F
    invoke-direct {p0, v8, v9, v10}, Lcom/nuance/swype/input/TwoFingersGestureDetector;->addPoint(IFF)V

    .line 364
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 371
    .end local v9    # "x":F
    .end local v10    # "y":F
    :cond_2
    invoke-static {p1, v4}, Lcom/nuance/swype/input/MotionEventWrapper;->getX(Landroid/view/MotionEvent;I)F

    move-result v9

    .line 372
    .restart local v9    # "x":F
    invoke-static {p1, v4}, Lcom/nuance/swype/input/MotionEventWrapper;->getY(Landroid/view/MotionEvent;I)F

    move-result v10

    .line 373
    .restart local v10    # "y":F
    invoke-direct {p0, v8, v9, v10}, Lcom/nuance/swype/input/TwoFingersGestureDetector;->addPoint(IFF)V

    .line 358
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 380
    .end local v2    # "histories":I
    .end local v3    # "i":I
    .end local v4    # "index":I
    .end local v5    # "pointerCount":I
    .end local v8    # "thisPointerId":I
    .end local v9    # "x":F
    .end local v10    # "y":F
    :pswitch_4
    invoke-static {p1, v7}, Lcom/nuance/swype/input/MotionEventWrapper;->getX(Landroid/view/MotionEvent;I)F

    move-result v9

    .line 381
    .restart local v9    # "x":F
    invoke-static {p1, v7}, Lcom/nuance/swype/input/MotionEventWrapper;->getY(Landroid/view/MotionEvent;I)F

    move-result v10

    .line 382
    .restart local v10    # "y":F
    invoke-direct {p0, v6, v9, v10}, Lcom/nuance/swype/input/TwoFingersGestureDetector;->addPoint(IFF)V

    goto :goto_0

    .line 338
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public setListener(Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureListener;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector;->mGestureListener:Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureListener;

    .line 211
    return-void
.end method
