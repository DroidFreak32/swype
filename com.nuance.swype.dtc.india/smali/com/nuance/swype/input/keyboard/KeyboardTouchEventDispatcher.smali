.class public Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;
.super Ljava/lang/Object;
.source "KeyboardTouchEventDispatcher.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/nuance/input/swypecorelib/TouchRequestCallback;
.implements Lcom/nuance/swype/input/keyboard/TimerHandler$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$MultiTouchFlingGestures;,
        Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$GestureDirection;,
        Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchGesture;,
        Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$FlingGestureListener;,
        Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker;,
        Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchKeyActionHandler;
    }
.end annotation


# static fields
.field private static final defaultFlingGestureListener:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$FlingGestureListener;

.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private final coreInput:Lcom/nuance/input/swypecorelib/XT9CoreInput;

.field private currentKeyIndex:I

.field private flingGestureListener:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$FlingGestureListener;

.field private final gestureDetector:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$MultiTouchFlingGestures;

.field private final ime:Lcom/nuance/swype/input/IME;

.field private isTracing:Z

.field private final keyIndices:Landroid/util/SparseIntArray;

.field private final keyPressAndHoldTracker:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker;

.field private final longPressTimeout:I

.field private shiftGestureOffset:I

.field private final startTime:J

.field private final timerHandler:Lcom/nuance/swype/input/keyboard/TimerHandler;

.field private final timersArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/nuance/swype/input/keyboard/ResizableIntArray;",
            ">;"
        }
    .end annotation
.end field

.field private touchKeyActionHandler:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchKeyActionHandler;

.field private final xCoordArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/nuance/swype/input/keyboard/ResizableFloatArray;",
            ">;"
        }
    .end annotation
.end field

.field private final yCoordArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/nuance/swype/input/keyboard/ResizableFloatArray;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->log:Lcom/nuance/swype/util/LogManager$Log;

    .line 725
    new-instance v0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$1;

    invoke-direct {v0}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$1;-><init>()V

    sput-object v0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->defaultFlingGestureListener:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$FlingGestureListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/nuance/input/swypecorelib/XT9CoreInput;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "coreInput"    # Lcom/nuance/input/swypecorelib/XT9CoreInput;

    .prologue
    const/4 v2, 0x0

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->currentKeyIndex:I

    .line 159
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->xCoordArray:Landroid/util/SparseArray;

    .line 160
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->yCoordArray:Landroid/util/SparseArray;

    .line 161
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->timersArray:Landroid/util/SparseArray;

    .line 162
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->keyIndices:Landroid/util/SparseIntArray;

    .line 167
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->isTracing:Z

    .line 169
    iput-object p2, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->coreInput:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    .line 170
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->startTime:J

    .line 171
    invoke-static {p1}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getLongPressDelay()I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->longPressTimeout:I

    .line 173
    new-instance v0, Lcom/nuance/swype/input/keyboard/TimerHandler;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/keyboard/TimerHandler;-><init>(Lcom/nuance/swype/input/keyboard/TimerHandler$Callbacks;)V

    iput-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->timerHandler:Lcom/nuance/swype/input/keyboard/TimerHandler;

    .line 174
    sget-object v0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->defaultFlingGestureListener:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$FlingGestureListener;

    iput-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->flingGestureListener:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$FlingGestureListener;

    .line 175
    new-instance v0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$MultiTouchFlingGestures;

    invoke-direct {v0, p0, p1, v2}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$MultiTouchFlingGestures;-><init>(Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;Landroid/content/Context;Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$1;)V

    iput-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->gestureDetector:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$MultiTouchFlingGestures;

    .line 176
    new-instance v0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker;

    invoke-direct {v0, p0, v2}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker;-><init>(Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$1;)V

    iput-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->keyPressAndHoldTracker:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker;

    .line 177
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->ime:Lcom/nuance/swype/input/IME;

    .line 178
    return-void
.end method

.method static synthetic access$1000(Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->timersArray:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;)Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$FlingGestureListener;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->flingGestureListener:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$FlingGestureListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;)Lcom/nuance/swype/input/keyboard/TimerHandler;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->timerHandler:Lcom/nuance/swype/input/keyboard/TimerHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;)Lcom/nuance/input/swypecorelib/XT9CoreInput;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->coreInput:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    return-object v0
.end method

.method static synthetic access$600(Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;)Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchKeyActionHandler;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->touchKeyActionHandler:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchKeyActionHandler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;J)I
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;
    .param p1, "x1"    # J

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->normalizeEventTime(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->xCoordArray:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$900(Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->yCoordArray:Landroid/util/SparseArray;

    return-object v0
.end method

.method private adjustShiftMargin(Lcom/nuance/swype/input/keyboard/ResizableFloatArray;)[F
    .locals 4
    .param p1, "ycoords"    # Lcom/nuance/swype/input/keyboard/ResizableFloatArray;

    .prologue
    .line 958
    invoke-virtual {p1}, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;->getRawArray()[F

    move-result-object v1

    .line 959
    .local v1, "newYcoords":[F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 960
    aget v2, v1, v0

    iget v3, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->shiftGestureOffset:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    aput v2, v1, v0

    .line 959
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 962
    :cond_0
    return-object v1
.end method

.method private cancelAllPendingTouches()V
    .locals 6

    .prologue
    .line 440
    sget-object v2, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "onCancel() pointer count: "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->keyIndices:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 441
    const/4 v0, 0x0

    .local v0, "p":I
    :goto_0
    iget-object v2, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->keyIndices:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 442
    iget-object v2, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->keyIndices:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 443
    .local v1, "pointerId":I
    iget-object v2, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->coreInput:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    invoke-virtual {v2, v1}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->touchCancel(I)Z

    .line 444
    iget-object v2, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->touchKeyActionHandler:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchKeyActionHandler;

    const/4 v3, -0x1

    invoke-interface {v2, v1, v3}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchKeyActionHandler;->touchCanceled(II)V

    .line 445
    iget-object v2, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->keyPressAndHoldTracker:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker;

    invoke-static {v2, v1}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker;->access$200(Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker;I)V

    .line 441
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 447
    .end local v1    # "pointerId":I
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->timerHandler:Lcom/nuance/swype/input/keyboard/TimerHandler;

    invoke-virtual {v2}, Lcom/nuance/swype/input/keyboard/TimerHandler;->cancelRepeatKeyTimer()V

    .line 448
    iget-object v2, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->timerHandler:Lcom/nuance/swype/input/keyboard/TimerHandler;

    invoke-virtual {v2}, Lcom/nuance/swype/input/keyboard/TimerHandler;->cancelLongPressKeyTimer()V

    .line 449
    return-void
.end method

.method private clearPendingTimers()V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->timerHandler:Lcom/nuance/swype/input/keyboard/TimerHandler;

    invoke-virtual {v0}, Lcom/nuance/swype/input/keyboard/TimerHandler;->cancelMultiTapTimerTimeOut()V

    .line 222
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->timerHandler:Lcom/nuance/swype/input/keyboard/TimerHandler;

    invoke-virtual {v0}, Lcom/nuance/swype/input/keyboard/TimerHandler;->cancelRepeatKeyTimer()V

    .line 223
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->timerHandler:Lcom/nuance/swype/input/keyboard/TimerHandler;

    invoke-virtual {v0}, Lcom/nuance/swype/input/keyboard/TimerHandler;->cancelLongPressKeyTimer()V

    .line 224
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->keyPressAndHoldTracker:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker;->access$200(Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker;I)V

    .line 225
    return-void
.end method

.method private collectPoints(Landroid/view/MotionEvent;Lcom/nuance/swype/input/keyboard/ResizableFloatArray;Lcom/nuance/swype/input/keyboard/ResizableFloatArray;Lcom/nuance/swype/input/keyboard/ResizableIntArray;)V
    .locals 4
    .param p1, "me"    # Landroid/view/MotionEvent;
    .param p2, "xcoords"    # Lcom/nuance/swype/input/keyboard/ResizableFloatArray;
    .param p3, "ycoords"    # Lcom/nuance/swype/input/keyboard/ResizableFloatArray;
    .param p4, "times"    # Lcom/nuance/swype/input/keyboard/ResizableIntArray;

    .prologue
    .line 262
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 263
    .local v0, "index":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 265
    .local v1, "pointerId":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p2, v2}, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;->add(F)V

    .line 266
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p3, v2}, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;->add(F)V

    .line 267
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->normalizeEventTime(J)I

    move-result v2

    invoke-virtual {p4, v2}, Lcom/nuance/swype/input/keyboard/ResizableIntArray;->add(I)V

    .line 269
    iget-object v2, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->xCoordArray:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;

    invoke-virtual {v2, p2}, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;->add(Lcom/nuance/swype/input/keyboard/ResizableFloatArray;)V

    .line 270
    iget-object v2, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->yCoordArray:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;

    invoke-virtual {v2, p3}, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;->add(Lcom/nuance/swype/input/keyboard/ResizableFloatArray;)V

    .line 271
    iget-object v2, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->timersArray:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/keyboard/ResizableIntArray;

    invoke-virtual {v2, p4}, Lcom/nuance/swype/input/keyboard/ResizableIntArray;->add(Lcom/nuance/swype/input/keyboard/ResizableIntArray;)V

    .line 272
    return-void
.end method

.method private getKeyboardAccessibilityState()Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;
    .locals 1

    .prologue
    .line 232
    invoke-static {}, Lcom/nuance/swype/input/accessibility/statemachine/AccessibilityStateManager;->getInstance()Lcom/nuance/swype/input/accessibility/statemachine/AccessibilityStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/accessibility/statemachine/AccessibilityStateManager;->getKeyboardAccessibilityState()Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;

    move-result-object v0

    return-object v0
.end method

.method private isAccessibilitySupportEnabled()Z
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->isAccessibilitySupportEnabled()Z

    move-result v0

    return v0
.end method

.method private normalizeEventTime(J)I
    .locals 3
    .param p1, "eventTime"    # J

    .prologue
    .line 452
    iget-wide v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->startTime:J

    sub-long v0, p1, v0

    long-to-int v0, v0

    return v0
.end method

.method private onDown(Landroid/view/MotionEvent;)V
    .locals 10
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x0

    .line 243
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 245
    .local v1, "pointerId":I
    sget-object v5, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v6, 0x7

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "onDown("

    aput-object v7, v6, v9

    const/4 v7, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, ","

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string/jumbo v8, ", "

    aput-object v8, v6, v7

    const/4 v7, 0x5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x6

    const-string/jumbo v8, ")"

    aput-object v8, v6, v7

    invoke-interface {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 247
    iget-object v5, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->xCoordArray:Landroid/util/SparseArray;

    new-instance v6, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;

    invoke-direct {v6}, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;-><init>()V

    invoke-virtual {v5, v1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 248
    iget-object v5, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->yCoordArray:Landroid/util/SparseArray;

    new-instance v6, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;

    invoke-direct {v6}, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;-><init>()V

    invoke-virtual {v5, v1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 249
    iget-object v5, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->timersArray:Landroid/util/SparseArray;

    new-instance v6, Lcom/nuance/swype/input/keyboard/ResizableIntArray;

    invoke-direct {v6}, Lcom/nuance/swype/input/keyboard/ResizableIntArray;-><init>()V

    invoke-virtual {v5, v1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 251
    new-instance v3, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;

    invoke-direct {v3}, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;-><init>()V

    .line 252
    .local v3, "xcoords":Lcom/nuance/swype/input/keyboard/ResizableFloatArray;
    new-instance v4, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;

    invoke-direct {v4}, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;-><init>()V

    .line 253
    .local v4, "ycoords":Lcom/nuance/swype/input/keyboard/ResizableFloatArray;
    new-instance v2, Lcom/nuance/swype/input/keyboard/ResizableIntArray;

    invoke-direct {v2}, Lcom/nuance/swype/input/keyboard/ResizableIntArray;-><init>()V

    .line 255
    .local v2, "times":Lcom/nuance/swype/input/keyboard/ResizableIntArray;
    invoke-direct {p0, p1, v3, v4, v2}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->collectPoints(Landroid/view/MotionEvent;Lcom/nuance/swype/input/keyboard/ResizableFloatArray;Lcom/nuance/swype/input/keyboard/ResizableFloatArray;Lcom/nuance/swype/input/keyboard/ResizableIntArray;)V

    .line 256
    invoke-direct {p0, v4}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->adjustShiftMargin(Lcom/nuance/swype/input/keyboard/ResizableFloatArray;)[F

    move-result-object v0

    .line 257
    .local v0, "newYcoords":[F
    iget-object v5, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->coreInput:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    invoke-virtual {v3}, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;->getRawArray()[F

    move-result-object v6

    invoke-virtual {v2}, Lcom/nuance/swype/input/keyboard/ResizableIntArray;->getRawArray()[I

    move-result-object v7

    invoke-virtual {v5, v1, v6, v0, v7}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->touchStart(I[F[F[I)Z

    .line 258
    invoke-direct {p0, v9}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->playKeyFeedback(I)V

    .line 259
    return-void
.end method

.method private onMove(Landroid/view/MotionEvent;)V
    .locals 13
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 292
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v1

    .line 293
    .local v1, "historySize":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    .line 295
    .local v4, "pointerCounter":I
    const/4 v3, 0x0

    .local v3, "p":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 296
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 298
    .local v5, "pointerId":I
    sget-object v9, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string/jumbo v12, "onMove("

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string/jumbo v12, ")"

    aput-object v12, v10, v11

    invoke-interface {v9, v10}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 300
    new-instance v7, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;

    invoke-direct {v7}, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;-><init>()V

    .line 301
    .local v7, "xcoords":Lcom/nuance/swype/input/keyboard/ResizableFloatArray;
    new-instance v8, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;

    invoke-direct {v8}, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;-><init>()V

    .line 302
    .local v8, "ycoords":Lcom/nuance/swype/input/keyboard/ResizableFloatArray;
    new-instance v6, Lcom/nuance/swype/input/keyboard/ResizableIntArray;

    invoke-direct {v6}, Lcom/nuance/swype/input/keyboard/ResizableIntArray;-><init>()V

    .line 304
    .local v6, "times":Lcom/nuance/swype/input/keyboard/ResizableIntArray;
    const/4 v0, 0x0

    .local v0, "h":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 305
    invoke-virtual {p1, v3, v0}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v9

    invoke-virtual {v7, v9}, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;->add(F)V

    .line 306
    invoke-virtual {p1, v3, v0}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v9

    invoke-virtual {v8, v9}, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;->add(F)V

    .line 307
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v10

    invoke-direct {p0, v10, v11}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->normalizeEventTime(J)I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/nuance/swype/input/keyboard/ResizableIntArray;->add(I)V

    .line 304
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 310
    :cond_0
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    invoke-virtual {v7, v9}, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;->add(F)V

    .line 311
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    invoke-virtual {v8, v9}, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;->add(F)V

    .line 312
    iget-object v9, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->touchKeyActionHandler:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchKeyActionHandler;

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    invoke-interface {v9, v10}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchKeyActionHandler;->handleKeyboardShiftState(F)V

    .line 313
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    invoke-direct {p0, v10, v11}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->normalizeEventTime(J)I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/nuance/swype/input/keyboard/ResizableIntArray;->add(I)V

    .line 314
    invoke-direct {p0, v8}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->adjustShiftMargin(Lcom/nuance/swype/input/keyboard/ResizableFloatArray;)[F

    move-result-object v2

    .line 315
    .local v2, "newYcoords":[F
    iget-object v9, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->xCoordArray:Landroid/util/SparseArray;

    invoke-virtual {v9, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;

    invoke-virtual {v9, v7}, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;->add(Lcom/nuance/swype/input/keyboard/ResizableFloatArray;)V

    .line 316
    iget-object v9, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->yCoordArray:Landroid/util/SparseArray;

    invoke-virtual {v9, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;

    invoke-virtual {v9, v8}, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;->add(Lcom/nuance/swype/input/keyboard/ResizableFloatArray;)V

    .line 317
    iget-object v9, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->timersArray:Landroid/util/SparseArray;

    invoke-virtual {v9, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/nuance/swype/input/keyboard/ResizableIntArray;

    invoke-virtual {v9, v6}, Lcom/nuance/swype/input/keyboard/ResizableIntArray;->add(Lcom/nuance/swype/input/keyboard/ResizableIntArray;)V

    .line 318
    iget-object v9, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->coreInput:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    invoke-virtual {v7}, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;->getRawArray()[F

    move-result-object v10

    invoke-virtual {v6}, Lcom/nuance/swype/input/keyboard/ResizableIntArray;->getRawArray()[I

    move-result-object v11

    invoke-virtual {v9, v5, v10, v2, v11}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->touchMove(I[F[F[I)Z

    .line 295
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 320
    .end local v0    # "h":I
    .end local v2    # "newYcoords":[F
    .end local v5    # "pointerId":I
    .end local v6    # "times":Lcom/nuance/swype/input/keyboard/ResizableIntArray;
    .end local v7    # "xcoords":Lcom/nuance/swype/input/keyboard/ResizableFloatArray;
    .end local v8    # "ycoords":Lcom/nuance/swype/input/keyboard/ResizableFloatArray;
    :cond_1
    return-void
.end method

.method private onUp(Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 275
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 277
    .local v1, "pointerId":I
    sget-object v5, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v6, 0x7

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "onUp("

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, ", "

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string/jumbo v8, ", "

    aput-object v8, v6, v7

    const/4 v7, 0x5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x6

    const-string/jumbo v8, ")"

    aput-object v8, v6, v7

    invoke-interface {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 279
    new-instance v3, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;

    invoke-direct {v3}, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;-><init>()V

    .line 280
    .local v3, "xcoords":Lcom/nuance/swype/input/keyboard/ResizableFloatArray;
    new-instance v4, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;

    invoke-direct {v4}, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;-><init>()V

    .line 281
    .local v4, "ycoords":Lcom/nuance/swype/input/keyboard/ResizableFloatArray;
    new-instance v2, Lcom/nuance/swype/input/keyboard/ResizableIntArray;

    invoke-direct {v2}, Lcom/nuance/swype/input/keyboard/ResizableIntArray;-><init>()V

    .line 283
    .local v2, "times":Lcom/nuance/swype/input/keyboard/ResizableIntArray;
    invoke-direct {p0, p1, v3, v4, v2}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->collectPoints(Landroid/view/MotionEvent;Lcom/nuance/swype/input/keyboard/ResizableFloatArray;Lcom/nuance/swype/input/keyboard/ResizableFloatArray;Lcom/nuance/swype/input/keyboard/ResizableIntArray;)V

    .line 284
    invoke-direct {p0, v4}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->adjustShiftMargin(Lcom/nuance/swype/input/keyboard/ResizableFloatArray;)[F

    move-result-object v0

    .line 285
    .local v0, "newYcoords":[F
    iget-object v5, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->coreInput:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    invoke-virtual {v3}, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;->getRawArray()[F

    move-result-object v6

    invoke-virtual {v2}, Lcom/nuance/swype/input/keyboard/ResizableIntArray;->getRawArray()[I

    move-result-object v7

    invoke-virtual {v5, v1, v6, v0, v7}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->touchEnd(I[F[F[I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 286
    iget-object v5, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->timerHandler:Lcom/nuance/swype/input/keyboard/TimerHandler;

    invoke-virtual {v5}, Lcom/nuance/swype/input/keyboard/TimerHandler;->cancelRepeatKeyTimer()V

    .line 287
    iget-object v5, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->timerHandler:Lcom/nuance/swype/input/keyboard/TimerHandler;

    invoke-virtual {v5}, Lcom/nuance/swype/input/keyboard/TimerHandler;->cancelLongPressKeyTimer()V

    .line 289
    :cond_0
    return-void
.end method

.method private playKeyFeedback(I)V
    .locals 1
    .param p1, "keycode"    # I

    .prologue
    .line 236
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->ime:Lcom/nuance/swype/input/IME;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->vibrate()V

    .line 238
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/IME;->playKeyClick(I)V

    .line 240
    :cond_0
    return-void
.end method

.method private processQuickTap(IILcom/nuance/input/swypecorelib/KeyType;)Z
    .locals 3
    .param p1, "pointerId"    # I
    .param p2, "keyIndex"    # I
    .param p3, "keyType"    # Lcom/nuance/input/swypecorelib/KeyType;

    .prologue
    .line 508
    const/4 v0, 0x0

    .line 509
    .local v0, "isQuickPressed":Z
    iget v1, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->currentKeyIndex:I

    if-ne v1, p2, :cond_1

    .line 510
    iget-object v1, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->timerHandler:Lcom/nuance/swype/input/keyboard/TimerHandler;

    invoke-virtual {v1}, Lcom/nuance/swype/input/keyboard/TimerHandler;->isQuickKeyPressTimerTimeOutActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 511
    iget-object v1, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->timerHandler:Lcom/nuance/swype/input/keyboard/TimerHandler;

    invoke-virtual {v1}, Lcom/nuance/swype/input/keyboard/TimerHandler;->cancelQuickKeyPressTimerTimeOut()V

    .line 512
    const/4 v0, 0x1

    .line 513
    const/4 v1, -0x1

    iput v1, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->currentKeyIndex:I

    .line 519
    :cond_0
    :goto_0
    return v0

    .line 516
    :cond_1
    iput p2, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->currentKeyIndex:I

    .line 517
    iget-object v1, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->timerHandler:Lcom/nuance/swype/input/keyboard/TimerHandler;

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v2

    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/nuance/swype/input/keyboard/TimerHandler;->startQuickKeyPressTimerTimeOut(IILcom/nuance/input/swypecorelib/KeyType;I)V

    goto :goto_0
.end method


# virtual methods
.method public isTracing()Z
    .locals 1

    .prologue
    .line 970
    iget-boolean v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->isTracing:Z

    return v0
.end method

.method public keyboardLoaded(II)V
    .locals 4
    .param p1, "keyboardId"    # I
    .param p2, "page"    # I

    .prologue
    .line 604
    sget-object v0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "keyboardLoaded: keyboardId = 0x"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 605
    return-void
.end method

.method public longPressKey(IILcom/nuance/input/swypecorelib/KeyType;)V
    .locals 2
    .param p1, "pointerId"    # I
    .param p2, "keyIndex"    # I
    .param p3, "keyType"    # Lcom/nuance/input/swypecorelib/KeyType;

    .prologue
    .line 461
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->touchKeyActionHandler:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchKeyActionHandler;

    invoke-interface {v0, p1, p2, p3}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchKeyActionHandler;->touchHeld(IILcom/nuance/input/swypecorelib/KeyType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->coreInput:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    invoke-virtual {v0, p1}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->touchCancel(I)Z

    .line 463
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->touchKeyActionHandler:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchKeyActionHandler;

    invoke-interface {v0, p1, p2}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchKeyActionHandler;->touchCanceled(II)V

    .line 464
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->keyPressAndHoldTracker:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker;->startPressHoldTracker(IILcom/nuance/input/swypecorelib/KeyType;I)V

    .line 466
    :cond_0
    return-void
.end method

.method public multiTapTimerTimeOut()V
    .locals 4

    .prologue
    .line 496
    sget-object v0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "multiTapTimerTimeOut"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 498
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->coreInput:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->multiTapTimeOut()V

    .line 499
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->touchKeyActionHandler:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchKeyActionHandler;

    invoke-interface {v0}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchKeyActionHandler;->multiTapTimerTimeOut()V

    .line 500
    return-void
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "me"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 326
    invoke-direct {p0}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->isAccessibilitySupportEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 327
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    if-nez v2, :cond_0

    .line 328
    sget-object v2, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/16 v3, 0x9

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "onHove.view("

    aput-object v4, v3, v6

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v7

    const-string/jumbo v4, ", "

    aput-object v4, v3, v8

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v9

    const-string/jumbo v4, ", "

    aput-object v4, v3, v10

    const/4 v4, 0x5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string/jumbo v5, ", "

    aput-object v5, v3, v4

    const/4 v4, 0x7

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string/jumbo v5, ")"

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 330
    invoke-direct {p0}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->getKeyboardAccessibilityState()Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;->getCurrentState()Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;

    move-result-object v0

    .line 331
    .local v0, "currentState":Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;
    instance-of v1, v0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;

    .line 333
    .local v1, "isScrubWordSelectionState":Z
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 384
    .end local v0    # "currentState":Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;
    .end local v1    # "isScrubWordSelectionState":Z
    :cond_0
    :goto_0
    :pswitch_0
    return v6

    .line 336
    .restart local v0    # "currentState":Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;
    .restart local v1    # "isScrubWordSelectionState":Z
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->onMove(Landroid/view/MotionEvent;)V

    .line 338
    sget-object v3, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v4, v10, [Ljava/lang/Object;

    const-string/jumbo v2, "onHover.ACTION_OUTSIDE: x = "

    aput-object v2, v4, v6

    iget-object v2, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->xCoordArray:Landroid/util/SparseArray;

    .line 339
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;

    invoke-virtual {v2}, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;->getLast()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v4, v7

    const-string/jumbo v2, " y = "

    aput-object v2, v4, v8

    iget-object v2, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->yCoordArray:Landroid/util/SparseArray;

    .line 340
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;

    invoke-virtual {v2}, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;->getLast()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v4, v9

    .line 338
    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto :goto_0

    .line 344
    :pswitch_2
    if-nez v1, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 345
    iget-object v2, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->keyPressAndHoldTracker:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker;

    invoke-virtual {v2, p2}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 346
    invoke-direct {p0, p2}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->onUp(Landroid/view/MotionEvent;)V

    .line 352
    :cond_1
    :goto_1
    sget-object v3, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v4, v10, [Ljava/lang/Object;

    const-string/jumbo v2, "onHover.ACTION_HOVER_EXIT: x = "

    aput-object v2, v4, v6

    iget-object v2, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->xCoordArray:Landroid/util/SparseArray;

    .line 353
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;

    invoke-virtual {v2}, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;->getLast()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v4, v7

    const-string/jumbo v2, " y = "

    aput-object v2, v4, v8

    iget-object v2, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->yCoordArray:Landroid/util/SparseArray;

    .line 354
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;

    invoke-virtual {v2}, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;->getLast()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v4, v9

    .line 352
    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 349
    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;->handleActionUp(Lcom/nuance/swype/input/KeyboardViewEx$Pointer;Lcom/nuance/swype/input/KeyboardEx$Key;)V

    goto :goto_1

    .line 358
    :pswitch_3
    if-nez v1, :cond_3

    .line 359
    invoke-direct {p0, p2}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->onDown(Landroid/view/MotionEvent;)V

    .line 362
    :cond_3
    sget-object v3, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v4, v10, [Ljava/lang/Object;

    const-string/jumbo v2, "onHover.ACTION_HOVER_ENTER: x = "

    aput-object v2, v4, v6

    iget-object v2, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->xCoordArray:Landroid/util/SparseArray;

    .line 363
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;

    invoke-virtual {v2}, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;->getLast()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v4, v7

    const-string/jumbo v2, " y = "

    aput-object v2, v4, v8

    iget-object v2, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->yCoordArray:Landroid/util/SparseArray;

    .line 364
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;

    invoke-virtual {v2}, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;->getLast()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v4, v9

    .line 362
    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 369
    :pswitch_4
    if-nez v1, :cond_4

    .line 370
    iget-object v2, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->keyPressAndHoldTracker:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker;

    invoke-virtual {v2, p2}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 371
    invoke-direct {p0, p2}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->onMove(Landroid/view/MotionEvent;)V

    .line 375
    :cond_4
    sget-object v3, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x6

    new-array v4, v2, [Ljava/lang/Object;

    const-string/jumbo v2, "onHover.ACTION_HOVER_MOVE: x = "

    aput-object v2, v4, v6

    iget-object v2, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->xCoordArray:Landroid/util/SparseArray;

    .line 376
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;

    invoke-virtual {v2}, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;->getLast()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v4, v7

    const-string/jumbo v2, " y = "

    aput-object v2, v4, v8

    iget-object v2, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->yCoordArray:Landroid/util/SparseArray;

    .line 377
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;

    invoke-virtual {v2}, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;->getLast()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v4, v9

    const-string/jumbo v2, " rawY: "

    aput-object v2, v4, v10

    const/4 v2, 0x5

    .line 378
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v2

    .line 375
    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 333
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "me"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 389
    invoke-virtual {p1}, Landroid/view/View;->getTouchDelegate()Landroid/view/TouchDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTouchDelegate()Landroid/view/TouchDelegate;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/TouchDelegate;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    sget-object v0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "onTouch handled by touch delegate"

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 436
    :goto_0
    return v3

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->keyPressAndHoldTracker:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker;

    invoke-virtual {v0, p2}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 397
    sget-object v0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "onTouch handled by press hold"

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto :goto_0

    .line 402
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->gestureDetector:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$MultiTouchFlingGestures;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$MultiTouchFlingGestures;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 403
    sget-object v0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "onTouch handled by gesture"

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto :goto_0

    .line 408
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 412
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 415
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->onDown(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 420
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->onUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 425
    :pswitch_3
    invoke-direct {p0, p2}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->onMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 430
    :pswitch_4
    invoke-direct {p0}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->cancelAllPendingTouches()V

    goto :goto_0

    .line 412
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public quickPressKeyTimeOut(IILcom/nuance/input/swypecorelib/KeyType;)V
    .locals 1
    .param p1, "pointerId"    # I
    .param p2, "keyIndex"    # I
    .param p3, "keyType"    # Lcom/nuance/input/swypecorelib/KeyType;

    .prologue
    .line 491
    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->currentKeyIndex:I

    .line 492
    return-void
.end method

.method public registerFlingGestureHandler(Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$FlingGestureListener;)V
    .locals 0
    .param p1, "flingGestureListener"    # Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$FlingGestureListener;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->flingGestureListener:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$FlingGestureListener;

    .line 192
    return-void
.end method

.method public repeatedKey(IILcom/nuance/input/swypecorelib/KeyType;Lcom/nuance/swype/input/keyboard/TimerHandler$RepeatKeyRate;)V
    .locals 6
    .param p1, "pointerId"    # I
    .param p2, "keyIndex"    # I
    .param p3, "keyType"    # Lcom/nuance/input/swypecorelib/KeyType;
    .param p4, "repeatKeyRate"    # Lcom/nuance/swype/input/keyboard/TimerHandler$RepeatKeyRate;

    .prologue
    .line 470
    invoke-virtual {p4}, Lcom/nuance/swype/input/keyboard/TimerHandler$RepeatKeyRate;->getRepeatCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 471
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->coreInput:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    invoke-virtual {v0, p1}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->touchCancel(I)Z

    .line 472
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->touchKeyActionHandler:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchKeyActionHandler;

    invoke-interface {v0, p1, p2}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchKeyActionHandler;->touchCanceled(II)V

    .line 473
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->keyPressAndHoldTracker:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker;

    invoke-virtual {p4}, Lcom/nuance/swype/input/keyboard/TimerHandler$RepeatKeyRate;->getRepeatCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker;->startPressHoldTracker(IILcom/nuance/input/swypecorelib/KeyType;I)V

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->touchKeyActionHandler:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchKeyActionHandler;

    invoke-virtual {p4}, Lcom/nuance/swype/input/keyboard/TimerHandler$RepeatKeyRate;->getRepeatCount()I

    move-result v1

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchKeyActionHandler;->touchHeldRepeat(IILcom/nuance/input/swypecorelib/KeyType;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 479
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->keyPressAndHoldTracker:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker;

    invoke-static {v0, p1}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker;->access$300(Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker;I)Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker$PressHoldKey;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 480
    invoke-virtual {p4}, Lcom/nuance/swype/input/keyboard/TimerHandler$RepeatKeyRate;->updateRepeatCount()V

    .line 481
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->timerHandler:Lcom/nuance/swype/input/keyboard/TimerHandler;

    invoke-virtual {p4}, Lcom/nuance/swype/input/keyboard/TimerHandler$RepeatKeyRate;->getRepeatDelay()I

    move-result v5

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/swype/input/keyboard/TimerHandler;->startRepeatKeyTimer(IILcom/nuance/input/swypecorelib/KeyType;Lcom/nuance/swype/input/keyboard/TimerHandler$RepeatKeyRate;I)V

    .line 486
    :cond_1
    return-void
.end method

.method public resisterTouchKeyHandler(Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchKeyActionHandler;)V
    .locals 1
    .param p1, "touchKeyActionHandler"    # Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchKeyActionHandler;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->coreInput:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    invoke-virtual {v0, p0}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->setTouchRequestCallback(Lcom/nuance/input/swypecorelib/TouchRequestCallback;)V

    .line 183
    iput-object p1, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->touchKeyActionHandler:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchKeyActionHandler;

    .line 184
    return-void
.end method

.method public setMultiTapTimerTimeOutRequest(I)V
    .locals 4
    .param p1, "timerID"    # I

    .prologue
    .line 609
    sget-object v0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "setMultiTapTimerTimeOutRequest timerID = "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 611
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->timerHandler:Lcom/nuance/swype/input/keyboard/TimerHandler;

    invoke-virtual {v0}, Lcom/nuance/swype/input/keyboard/TimerHandler;->cancelQuickKeyPressTimerTimeOut()V

    .line 612
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->timerHandler:Lcom/nuance/swype/input/keyboard/TimerHandler;

    const/16 v1, 0x2ee

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/keyboard/TimerHandler;->startMultiTapTimerTimeOut(I)V

    .line 613
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->touchKeyActionHandler:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchKeyActionHandler;

    invoke-interface {v0}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchKeyActionHandler;->multiTapTimerTimeoutActive()V

    .line 614
    return-void
.end method

.method public setShiftGestureOffsetValue(I)V
    .locals 0
    .param p1, "shiftGestureOffset"    # I

    .prologue
    .line 966
    iput p1, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->shiftGestureOffset:I

    .line 967
    return-void
.end method

.method public setTouchTimerTimeOutRequest(I)V
    .locals 1
    .param p1, "timeOut"    # I

    .prologue
    .line 619
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->timerHandler:Lcom/nuance/swype/input/keyboard/TimerHandler;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/keyboard/TimerHandler;->startTouchTimerTimeOut(I)V

    .line 620
    return-void
.end method

.method public touchCanceled(ZI)V
    .locals 1
    .param p1, "mainTouch"    # Z
    .param p2, "pointerId"    # I

    .prologue
    .line 596
    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->currentKeyIndex:I

    .line 597
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->timerHandler:Lcom/nuance/swype/input/keyboard/TimerHandler;

    invoke-virtual {v0}, Lcom/nuance/swype/input/keyboard/TimerHandler;->cancelRepeatKeyTimer()V

    .line 598
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->timerHandler:Lcom/nuance/swype/input/keyboard/TimerHandler;

    invoke-virtual {v0}, Lcom/nuance/swype/input/keyboard/TimerHandler;->cancelLongPressKeyTimer()V

    .line 599
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->timerHandler:Lcom/nuance/swype/input/keyboard/TimerHandler;

    invoke-virtual {v0}, Lcom/nuance/swype/input/keyboard/TimerHandler;->cancelQuickKeyPressTimerTimeOut()V

    .line 600
    return-void
.end method

.method public touchEnded(ZILcom/nuance/input/swypecorelib/KeyType;ICZ)V
    .locals 9
    .param p1, "mainTouch"    # Z
    .param p2, "pointerId"    # I
    .param p3, "keyType"    # Lcom/nuance/input/swypecorelib/KeyType;
    .param p4, "keyIndex"    # I
    .param p5, "keyCode"    # C
    .param p6, "canBeTraced"    # Z

    .prologue
    .line 577
    const/4 v5, 0x0

    .line 578
    .local v5, "quickPressed":Z
    if-nez p6, :cond_0

    .line 579
    invoke-direct {p0, p2, p4, p3}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->processQuickTap(IILcom/nuance/input/swypecorelib/KeyType;)Z

    move-result v5

    .line 581
    :cond_0
    iput-boolean p6, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->isTracing:Z

    .line 582
    sget-object v0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "touchEnded(): pointerId:  "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, " keyIndex: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 584
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->timerHandler:Lcom/nuance/swype/input/keyboard/TimerHandler;

    invoke-virtual {v0}, Lcom/nuance/swype/input/keyboard/TimerHandler;->cancelRepeatKeyTimer()V

    .line 585
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->timerHandler:Lcom/nuance/swype/input/keyboard/TimerHandler;

    invoke-virtual {v0}, Lcom/nuance/swype/input/keyboard/TimerHandler;->cancelLongPressKeyTimer()V

    .line 586
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->touchKeyActionHandler:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchKeyActionHandler;

    iget-object v1, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->xCoordArray:Landroid/util/SparseArray;

    .line 587
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;

    invoke-virtual {v1}, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;->getLast()F

    move-result v6

    iget-object v1, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->yCoordArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;

    invoke-virtual {v1}, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;->getLast()F

    move-result v7

    iget-object v1, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->timersArray:Landroid/util/SparseArray;

    .line 588
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/keyboard/ResizableIntArray;

    invoke-virtual {v1}, Lcom/nuance/swype/input/keyboard/ResizableIntArray;->getLast()I

    move-result v8

    move v1, p2

    move v2, p4

    move-object v3, p3

    move v4, p6

    .line 586
    invoke-interface/range {v0 .. v8}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchKeyActionHandler;->touchEnded(IILcom/nuance/input/swypecorelib/KeyType;ZZFFI)V

    .line 590
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->keyIndices:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 591
    return-void
.end method

.method public touchStarted(ZILcom/nuance/input/swypecorelib/KeyType;ICZ)V
    .locals 8
    .param p1, "mainTouch"    # Z
    .param p2, "pointerId"    # I
    .param p3, "keyType"    # Lcom/nuance/input/swypecorelib/KeyType;
    .param p4, "keyIndex"    # I
    .param p5, "keyCode"    # C
    .param p6, "canBeTraced"    # Z

    .prologue
    const/4 v4, 0x1

    .line 529
    sget-object v0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "touchStarted(): pointerId:  "

    aput-object v3, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string/jumbo v3, " keyIndex: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 530
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    .line 531
    .local v7, "context":Landroid/content/Context;
    invoke-static {v7}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/nuance/swype/input/IMEApplication;->setUserTapKey(Z)V

    .line 532
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->keyIndices:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2, p4}, Landroid/util/SparseIntArray;->put(II)V

    .line 533
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->timerHandler:Lcom/nuance/swype/input/keyboard/TimerHandler;

    invoke-virtual {v0}, Lcom/nuance/swype/input/keyboard/TimerHandler;->cancelRepeatKeyTimer()V

    .line 534
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->timerHandler:Lcom/nuance/swype/input/keyboard/TimerHandler;

    invoke-virtual {v0}, Lcom/nuance/swype/input/keyboard/TimerHandler;->cancelLongPressKeyTimer()V

    .line 536
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->ime:Lcom/nuance/swype/input/IME;

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    .line 537
    iput-boolean p6, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->isTracing:Z

    .line 538
    if-eqz p1, :cond_1

    .line 541
    const/16 v0, 0x8

    if-eq p5, v0, :cond_0

    invoke-static {p5}, Lcom/nuance/swype/input/KeyboardEx;->isArrowKeys(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->timerHandler:Lcom/nuance/swype/input/keyboard/TimerHandler;

    new-instance v4, Lcom/nuance/swype/input/keyboard/TimerHandler$RepeatKeyRate;

    invoke-direct {v4, v7}, Lcom/nuance/swype/input/keyboard/TimerHandler$RepeatKeyRate;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v5

    move v1, p2

    move v2, p4

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/swype/input/keyboard/TimerHandler;->startRepeatKeyTimer(IILcom/nuance/input/swypecorelib/KeyType;Lcom/nuance/swype/input/keyboard/TimerHandler$RepeatKeyRate;I)V

    .line 549
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->touchKeyActionHandler:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchKeyActionHandler;

    iget-object v1, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->xCoordArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;

    invoke-virtual {v1}, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;->getLast()F

    move-result v4

    iget-object v1, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->yCoordArray:Landroid/util/SparseArray;

    .line 550
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;

    invoke-virtual {v1}, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;->getLast()F

    move-result v5

    iget-object v1, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->timersArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/keyboard/ResizableIntArray;

    invoke-virtual {v1}, Lcom/nuance/swype/input/keyboard/ResizableIntArray;->getLast()I

    move-result v6

    move v1, p2

    move v2, p4

    move-object v3, p3

    .line 549
    invoke-interface/range {v0 .. v6}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchKeyActionHandler;->touchStarted(IILcom/nuance/input/swypecorelib/KeyType;FFI)V

    .line 551
    return-void

    .line 544
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->timerHandler:Lcom/nuance/swype/input/keyboard/TimerHandler;

    iget v1, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->longPressTimeout:I

    invoke-virtual {v0, p2, p4, p3, v1}, Lcom/nuance/swype/input/keyboard/TimerHandler;->startLongPressKeyTimer(IILcom/nuance/input/swypecorelib/KeyType;I)V

    goto :goto_0
.end method

.method public touchTimerTimeOut(I)V
    .locals 1
    .param p1, "timeout"    # I

    .prologue
    .line 504
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->coreInput:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    invoke-virtual {v0, p1}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->touchTimeOut(I)V

    .line 505
    return-void
.end method

.method public touchUpdated(ZILcom/nuance/input/swypecorelib/KeyType;ICZ)V
    .locals 7
    .param p1, "mainTouch"    # Z
    .param p2, "pointerId"    # I
    .param p3, "keyType"    # Lcom/nuance/input/swypecorelib/KeyType;
    .param p4, "keyIndex"    # I
    .param p5, "keyCode"    # C
    .param p6, "canBeTraced"    # Z

    .prologue
    .line 557
    sget-object v0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v6, "touchUpdated(): pointerId:  "

    aput-object v6, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v6, " keyIndex: "

    aput-object v6, v1, v2

    const/4 v2, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v6, " canBeTraced: "

    aput-object v6, v1, v2

    const/4 v2, 0x5

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 559
    if-nez p6, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->coreInput:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->isTraceEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->keyIndices:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, p4, :cond_1

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->timerHandler:Lcom/nuance/swype/input/keyboard/TimerHandler;

    invoke-virtual {v0}, Lcom/nuance/swype/input/keyboard/TimerHandler;->cancelRepeatKeyTimer()V

    .line 561
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->timerHandler:Lcom/nuance/swype/input/keyboard/TimerHandler;

    invoke-virtual {v0}, Lcom/nuance/swype/input/keyboard/TimerHandler;->cancelLongPressKeyTimer()V

    .line 562
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->timerHandler:Lcom/nuance/swype/input/keyboard/TimerHandler;

    invoke-virtual {v0}, Lcom/nuance/swype/input/keyboard/TimerHandler;->cancelQuickKeyPressTimerTimeOut()V

    .line 564
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->keyIndices:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2, p4}, Landroid/util/SparseIntArray;->put(II)V

    .line 565
    iput-boolean p6, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->isTracing:Z

    .line 566
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->xCoordArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;

    invoke-virtual {v0}, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;->getRawArray()[F

    move-result-object v3

    .line 567
    .local v3, "xcoords":[F
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->yCoordArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;

    invoke-virtual {v0}, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;->getRawArray()[F

    move-result-object v4

    .line 568
    .local v4, "ycoords":[F
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->timersArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/keyboard/ResizableIntArray;

    invoke-virtual {v0}, Lcom/nuance/swype/input/keyboard/ResizableIntArray;->getRawArray()[I

    move-result-object v5

    .line 570
    .local v5, "times":[I
    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    .line 571
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->touchKeyActionHandler:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchKeyActionHandler;

    move v1, p2

    move v2, p4

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchKeyActionHandler;->touchMoved(II[F[F[IZ)V

    .line 573
    :cond_2
    return-void
.end method

.method public unresisterTouchKeyHandler()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 187
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->coreInput:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->setTouchRequestCallback(Lcom/nuance/input/swypecorelib/TouchRequestCallback;)V

    .line 188
    iput-object v1, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->touchKeyActionHandler:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchKeyActionHandler;

    .line 189
    return-void
.end method

.method public unwrapHoverEvent(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 215
    sget-object v0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "upwrapOverEvent: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 217
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 218
    return-void
.end method

.method public unwrapTouchEvent(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 209
    sget-object v0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "unwrapTouchEvent: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 211
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 212
    return-void
.end method

.method public wrapHoverEvent(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 202
    sget-object v0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "wrapHoverEvent: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 204
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 205
    invoke-direct {p0}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->clearPendingTimers()V

    .line 206
    return-void
.end method

.method public wrapTouchEvent(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 195
    sget-object v0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "wrapTouchEvent: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 197
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 198
    invoke-direct {p0}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->clearPendingTimers()V

    .line 199
    return-void
.end method
