.class public Lcom/nuance/swype/input/accessibility/ExtendedPointTracker;
.super Lcom/nuance/android/util/WindowCallbackWrapper;
.source "ExtendedPointTracker.java"


# instance fields
.field private final baseCallback:Landroid/view/Window$Callback;

.field extendedPoint:Landroid/graphics/Point;

.field private final outLocation:[I


# direct methods
.method public constructor <init>(Landroid/view/Window$Callback;)V
    .locals 1
    .param p1, "baseCallback"    # Landroid/view/Window$Callback;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/nuance/android/util/WindowCallbackWrapper;-><init>()V

    .line 19
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/nuance/swype/input/accessibility/ExtendedPointTracker;->outLocation:[I

    .line 22
    iput-object p1, p0, Lcom/nuance/swype/input/accessibility/ExtendedPointTracker;->baseCallback:Landroid/view/Window$Callback;

    .line 23
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/accessibility/ExtendedPointTracker;->extendedPoint:Landroid/graphics/Point;

    .line 24
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/accessibility/ExtendedPointTracker;->setTarget(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;

    .line 25
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 47
    iget-object v1, p0, Lcom/nuance/swype/input/accessibility/ExtendedPointTracker;->extendedPoint:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 48
    iget-object v1, p0, Lcom/nuance/swype/input/accessibility/ExtendedPointTracker;->extendedPoint:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 49
    :try_start_0
    iget-object v1, p0, Lcom/nuance/swype/input/accessibility/ExtendedPointTracker;->baseCallback:Landroid/view/Window$Callback;

    invoke-interface {v1, p1}, Landroid/view/Window$Callback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 55
    :goto_0
    return v0

    .line 53
    :catch_0
    move-exception v1

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getExtendedEventForView(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/view/MotionEvent;
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 39
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 40
    .local v0, "extendedEvent":Landroid/view/MotionEvent;
    iget-object v1, p0, Lcom/nuance/swype/input/accessibility/ExtendedPointTracker;->outLocation:[I

    invoke-virtual {p2, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 41
    iget-object v1, p0, Lcom/nuance/swype/input/accessibility/ExtendedPointTracker;->extendedPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/nuance/swype/input/accessibility/ExtendedPointTracker;->outLocation:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/nuance/swype/input/accessibility/ExtendedPointTracker;->extendedPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/nuance/swype/input/accessibility/ExtendedPointTracker;->outLocation:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 42
    return-object v0
.end method

.method public getExtendedPoint()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/ExtendedPointTracker;->extendedPoint:Landroid/graphics/Point;

    return-object v0
.end method
