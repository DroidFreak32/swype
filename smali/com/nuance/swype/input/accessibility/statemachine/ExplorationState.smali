.class public Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;
.super Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;
.source "ExplorationState.java"


# static fields
.field private static final ACCESSIBILITY_LONG_PRESS_TIMEOUT_FACTOR:I = 0xa

.field private static final ACCESSIBILITY_SHORT_PRESS_TIMEOUT_FACTOR:I = 0x3

.field protected static final MSG_SPEAK_AFTER_DELAY:I = 0x1

.field private static instance:Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;

.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private accessibilityInfo:Lcom/nuance/swype/input/accessibility/AccessibilityInfo;

.field private final handler:Landroid/os/Handler;

.field private isExploreByTouchOn:Z

.field private isExploring:Z

.field private isFirstTime:Z

.field private keyboardTopExitThreshold:I

.field private lastSpeed:D

.field private mFirstKeyDelayCompleted:Z

.field private mLastAccessibilityKey:Lcom/nuance/swype/input/KeyboardEx$Key;

.field private mLastEventTime:J

.field private mLastKeyUsedForClick:Lcom/nuance/swype/input/KeyboardEx$Key;

.field private mLastPoint:Landroid/graphics/Point;

.field private minimumMoveTime:I

.field private scrubGestureBeingValue:I

.field private tapHoldDuration:I

.field private thresholdSpeed:D

.field private thresholdSpeedFactor:D

.field private validInputConfirmed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "ExplorationState"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;-><init>()V

    .line 62
    new-instance v0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState$1;-><init>(Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;)V

    iput-object v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;Lcom/nuance/swype/input/KeyboardEx$Key;)Lcom/nuance/swype/input/KeyboardEx$Key;
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;
    .param p1, "x1"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mLastAccessibilityKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    return-object p1
.end method

.method static synthetic access$102(Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mFirstKeyDelayCompleted:Z

    return p1
.end method

.method static synthetic access$202(Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->validInputConfirmed:Z

    return p1
.end method

.method public static getInstance()Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->instance:Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;

    invoke-direct {v0}, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;-><init>()V

    sput-object v0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->instance:Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;

    .line 42
    :cond_0
    sget-object v0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->instance:Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;

    return-object v0
.end method

.method private isTooFast(Landroid/graphics/Point;J)Z
    .locals 18
    .param p1, "point"    # Landroid/graphics/Point;
    .param p2, "currentTime"    # J

    .prologue
    .line 277
    if-nez p1, :cond_0

    .line 278
    const/4 v8, 0x0

    .line 306
    :goto_0
    return v8

    .line 280
    :cond_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mLastPoint:Landroid/graphics/Point;

    if-nez v9, :cond_1

    .line 281
    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mLastPoint:Landroid/graphics/Point;

    .line 282
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mLastPoint:Landroid/graphics/Point;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/graphics/Point;->x:I

    iput v14, v9, Landroid/graphics/Point;->x:I

    .line 283
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mLastPoint:Landroid/graphics/Point;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/graphics/Point;->y:I

    iput v14, v9, Landroid/graphics/Point;->y:I

    .line 284
    const/4 v8, 0x0

    goto :goto_0

    .line 287
    :cond_1
    move-object/from16 v0, p1

    iget v9, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mLastPoint:Landroid/graphics/Point;

    iget v14, v14, Landroid/graphics/Point;->x:I

    sub-int/2addr v9, v14

    int-to-double v2, v9

    .line 288
    .local v2, "diffX":D
    move-object/from16 v0, p1

    iget v9, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mLastPoint:Landroid/graphics/Point;

    iget v14, v14, Landroid/graphics/Point;->y:I

    sub-int/2addr v9, v14

    int-to-double v4, v9

    .line 289
    .local v4, "diffY":D
    mul-double v14, v2, v2

    mul-double v16, v4, v4

    add-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 291
    .local v6, "distance":D
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mLastEventTime:J

    sub-long v14, p2, v14

    long-to-double v12, v14

    .line 293
    .local v12, "time":D
    div-double v10, v6, v12

    .line 295
    .local v10, "speed":D
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->lastSpeed:D

    sub-double v14, v10, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->thresholdSpeed:D

    move-wide/from16 v16, v0

    cmpl-double v9, v14, v16

    if-lez v9, :cond_3

    const/4 v8, 0x1

    .line 296
    .local v8, "fast":Z
    :goto_1
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->lastSpeed:D

    .line 298
    move-object/from16 v0, p0

    iget v9, v0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->minimumMoveTime:I

    int-to-double v14, v9

    cmpg-double v9, v12, v14

    if-gez v9, :cond_2

    .line 299
    const/4 v8, 0x1

    .line 301
    :cond_2
    if-eqz v8, :cond_4

    .line 302
    move-object/from16 v0, p0

    iget v9, v0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->hover_exit_adjustment_width_offset_high:I

    move-object/from16 v0, p0

    iput v9, v0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->hover_exit_adjustment_width_offset:I

    goto :goto_0

    .line 295
    .end local v8    # "fast":Z
    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    .line 304
    .restart local v8    # "fast":Z
    :cond_4
    move-object/from16 v0, p0

    iget v9, v0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->hover_exit_adjustment_width_offset_low:I

    move-object/from16 v0, p0

    iput v9, v0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->hover_exit_adjustment_width_offset:I

    goto/16 :goto_0
.end method

.method private setKeyboardModel(Lcom/nuance/swype/input/KeyboardViewEx$Pointer;Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "pointer"    # Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 117
    invoke-static {}, Lcom/nuance/swype/input/accessibility/KeyboardModel;->getInstance()Lcom/nuance/swype/input/accessibility/KeyboardModel;

    move-result-object v0

    .line 118
    .local v0, "keyboardModel":Lcom/nuance/swype/input/accessibility/KeyboardModel;
    invoke-virtual {p0}, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->getCurrentView()Lcom/nuance/swype/input/KeyboardViewEx;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/accessibility/KeyboardModel;->setKeyboardContext(Lcom/nuance/swype/input/KeyboardViewEx;)V

    .line 119
    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/accessibility/KeyboardModel;->setPointer(Lcom/nuance/swype/input/KeyboardViewEx$Pointer;)V

    .line 120
    invoke-virtual {v0, p2}, Lcom/nuance/swype/input/accessibility/KeyboardModel;->setMotionEvent(Landroid/view/MotionEvent;)V

    .line 121
    iget-object v1, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mCurrentAccessibilityKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/accessibility/KeyboardModel;->setCurrentKey(Lcom/nuance/swype/input/KeyboardEx$Key;)V

    .line 122
    return-void
.end method


# virtual methods
.method public confirmValidInput()Z
    .locals 1

    .prologue
    .line 344
    iget-boolean v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->isExploring:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->validInputConfirmed:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleActionCancel(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 246
    return-void
.end method

.method public handleActionDown(Lcom/nuance/swype/input/KeyboardViewEx$Pointer;Landroid/view/MotionEvent;)V
    .locals 10
    .param p1, "pointer"    # Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    .param p2, "me"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 80
    iget-object v6, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->handler:Landroid/os/Handler;

    invoke-virtual {v6, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 81
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_4

    .line 82
    iput-boolean v7, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->validInputConfirmed:Z

    .line 86
    :goto_0
    iput-boolean v7, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->isExploring:Z

    .line 87
    invoke-virtual {p0}, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->getCurrentView()Lcom/nuance/swype/input/KeyboardViewEx;

    move-result-object v1

    .line 88
    .local v1, "currentView":Lcom/nuance/swype/input/KeyboardViewEx;
    iput-boolean v8, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->isFirstTime:Z

    .line 89
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mLastPoint:Landroid/graphics/Point;

    .line 90
    iput-boolean v7, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mFirstKeyDelayCompleted:Z

    .line 91
    if-eqz v1, :cond_3

    .line 92
    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 93
    .local v0, "app":Lcom/nuance/swype/input/IMEApplication;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 94
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/IME;->closeLanguageList()V

    .line 96
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 97
    .local v4, "x":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 98
    .local v5, "y":F
    float-to-int v6, v4

    float-to-int v7, v5

    invoke-virtual {v1, v6, v7}, Lcom/nuance/swype/input/KeyboardViewEx;->getKey(II)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v6

    iput-object v6, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mCurrentAccessibilityKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 99
    iget v6, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->hover_exit_adjustment_width_offset_low:I

    int-to-float v6, v6

    cmpg-float v6, v4, v6

    if-ltz v6, :cond_1

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardViewEx;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->hover_exit_adjustment_width_offset_low:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    cmpl-float v6, v4, v6

    if-lez v6, :cond_5

    .line 102
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->playSoundPlayedOnKeyboardExit()V

    .line 109
    :cond_2
    :goto_1
    invoke-virtual {v1, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->getFrozenPointerState(Lcom/nuance/swype/input/KeyboardViewEx$Pointer;)Lcom/nuance/swype/input/KeyboardViewEx$Pointer;

    move-result-object v2

    .line 110
    .local v2, "initialPointer":Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    invoke-direct {p0, v2, p2}, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->setKeyboardModel(Lcom/nuance/swype/input/KeyboardViewEx$Pointer;Landroid/view/MotionEvent;)V

    .line 114
    .end local v0    # "app":Lcom/nuance/swype/input/IMEApplication;
    .end local v2    # "initialPointer":Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    .end local v4    # "x":F
    .end local v5    # "y":F
    :cond_3
    return-void

    .line 84
    .end local v1    # "currentView":Lcom/nuance/swype/input/KeyboardViewEx;
    :cond_4
    iput-boolean v8, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->validInputConfirmed:Z

    goto :goto_0

    .line 104
    .restart local v0    # "app":Lcom/nuance/swype/input/IMEApplication;
    .restart local v1    # "currentView":Lcom/nuance/swype/input/KeyboardViewEx;
    .restart local v4    # "x":F
    .restart local v5    # "y":F
    :cond_5
    iget-boolean v6, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->isExploreByTouchOn:Z

    if-eqz v6, :cond_2

    .line 105
    iget-object v6, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->handler:Landroid/os/Handler;

    invoke-virtual {v6, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 106
    .local v3, "message":Landroid/os/Message;
    iget-object v6, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->handler:Landroid/os/Handler;

    iget v7, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->tapHoldDuration:I

    int-to-long v8, v7

    invoke-virtual {v6, v3, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1
.end method

.method public handleActionMove(Lcom/nuance/swype/input/KeyboardViewEx$Pointer;Landroid/view/MotionEvent;)V
    .locals 11
    .param p1, "pointer"    # Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    .param p2, "me"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x1

    .line 126
    invoke-virtual {p0}, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->getCurrentView()Lcom/nuance/swype/input/KeyboardViewEx;

    move-result-object v2

    .line 127
    .local v2, "currentView":Lcom/nuance/swype/input/KeyboardViewEx;
    invoke-virtual {p1}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getCurrentLocation()Landroid/graphics/Point;

    move-result-object v0

    .line 129
    .local v0, "currentPoint":Landroid/graphics/Point;
    iget v3, v0, Landroid/graphics/Point;->y:I

    iget v6, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->keyboardTopExitThreshold:I

    if-lt v3, v6, :cond_0

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardViewEx;->getHeight()I

    move-result v6

    if-gt v3, v6, :cond_0

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v6, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->hover_exit_adjustment_width_offset_low:I

    if-lt v3, v6, :cond_0

    iget v3, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardViewEx;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->hover_exit_adjustment_width_offset_low:I

    sub-int/2addr v6, v7

    if-le v3, v6, :cond_2

    .line 134
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->playSoundPlayedOnKeyboardExit()V

    .line 140
    :goto_0
    instance-of v3, v2, Lcom/nuance/swype/input/InputView;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Lcom/nuance/swype/input/InputView;

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputView;->getWordCandidateListContainer()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    move-object v3, v2

    .line 144
    check-cast v3, Lcom/nuance/swype/input/InputView;

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputView;->getWordCandidateListContainer()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    neg-int v3, v3

    iput v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->scrubGestureBeingValue:I

    .line 146
    :cond_1
    sget-object v3, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v6, "ExplorationState currentpoint y:"

    iget v7, v0, Landroid/graphics/Point;->y:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, " scrubGestureBeingValue:"

    iget v9, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->scrubGestureBeingValue:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v6, v7, v8, v9}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 147
    iget v3, v0, Landroid/graphics/Point;->y:I

    iget v6, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->scrubGestureBeingValue:I

    if-ge v3, v6, :cond_3

    .line 148
    sget-object v3, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v6, "ExplorationState on top of WCL"

    invoke-virtual {v3, v6}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 149
    invoke-static {}, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->getInstance()Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->changeState(Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;)V

    .line 150
    iget-object v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 182
    :goto_1
    return-void

    .line 137
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->resetPlaySoundPlayedOnKeyboardExit()V

    goto :goto_0

    .line 154
    :cond_3
    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v6, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3, v6}, Lcom/nuance/swype/input/KeyboardViewEx;->getKey(II)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v3

    iput-object v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mCurrentAccessibilityKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 155
    iput-boolean v10, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->isExploring:Z

    .line 156
    iget-object v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mCurrentAccessibilityKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mLastAccessibilityKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mCurrentAccessibilityKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v6, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mLastAccessibilityKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    if-eq v3, v6, :cond_6

    .line 158
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    .line 159
    .local v4, "time":J
    invoke-direct {p0, v0, v4, v5}, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->isTooFast(Landroid/graphics/Point;J)Z

    move-result v3

    iput-boolean v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->isTooFast:Z

    .line 160
    iget-boolean v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->isTooFast:Z

    if-nez v3, :cond_7

    .line 162
    iget-boolean v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->isExploreByTouchOn:Z

    if-eqz v3, :cond_5

    .line 163
    invoke-static {}, Lcom/nuance/swype/input/accessibility/AccessibilityNotification;->getInstance()Lcom/nuance/swype/input/accessibility/AccessibilityNotification;

    move-result-object v3

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/nuance/swype/input/accessibility/AccessibilityNotification;->speak(Landroid/content/Context;)V

    .line 165
    :cond_5
    iget-object v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mCurrentAccessibilityKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iput-object v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mLastAccessibilityKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 166
    iget-object v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mLastPoint:Landroid/graphics/Point;

    iget v6, v0, Landroid/graphics/Point;->x:I

    iput v6, v3, Landroid/graphics/Point;->x:I

    .line 167
    iget-object v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mLastPoint:Landroid/graphics/Point;

    iget v6, v0, Landroid/graphics/Point;->y:I

    iput v6, v3, Landroid/graphics/Point;->y:I

    .line 168
    iput-wide v4, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mLastEventTime:J

    .line 180
    .end local v4    # "time":J
    :cond_6
    :goto_2
    invoke-virtual {v2, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->getFrozenPointerState(Lcom/nuance/swype/input/KeyboardViewEx$Pointer;)Lcom/nuance/swype/input/KeyboardViewEx$Pointer;

    move-result-object v1

    .line 181
    .local v1, "currentPointer":Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    invoke-direct {p0, v1, p2}, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->setKeyboardModel(Lcom/nuance/swype/input/KeyboardViewEx$Pointer;Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 172
    .end local v1    # "currentPointer":Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    .restart local v4    # "time":J
    :cond_7
    iget-object v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mCurrentAccessibilityKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/nuance/swype/input/accessibility/SoundResources;->getInstance()Lcom/nuance/swype/input/accessibility/SoundResources;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mLastKeyUsedForClick:Lcom/nuance/swype/input/KeyboardEx$Key;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mLastKeyUsedForClick:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v6, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mCurrentAccessibilityKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    if-eq v3, v6, :cond_6

    .line 175
    :cond_8
    invoke-static {}, Lcom/nuance/swype/input/accessibility/SoundResources;->getInstance()Lcom/nuance/swype/input/accessibility/SoundResources;

    move-result-object v3

    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Lcom/nuance/swype/input/accessibility/SoundResources;->play(I)V

    .line 176
    iget-object v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mCurrentAccessibilityKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iput-object v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mLastKeyUsedForClick:Lcom/nuance/swype/input/KeyboardEx$Key;

    goto :goto_2
.end method

.method public handleActionUp(Lcom/nuance/swype/input/KeyboardViewEx$Pointer;Landroid/view/MotionEvent;)V
    .locals 11
    .param p1, "pointer"    # Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    .param p2, "me"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v10, 0x0

    .line 186
    iget-object v1, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 188
    iput-object v5, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mLastPoint:Landroid/graphics/Point;

    .line 189
    iget-boolean v1, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->isExploring:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mLastAccessibilityKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->getKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    move-result-object v1

    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_PHONE:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-eq v1, v2, :cond_0

    .line 192
    iget-object v1, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->accessibilityInfo:Lcom/nuance/swype/input/accessibility/AccessibilityInfo;

    invoke-virtual {v1}, Lcom/nuance/swype/input/accessibility/AccessibilityInfo;->getAccessibilityLabel()Lcom/nuance/swype/input/accessibility/AccessibilityLabel;

    move-result-object v0

    .line 193
    .local v0, "accessibilityLabel":Lcom/nuance/swype/input/accessibility/AccessibilityLabel;
    invoke-virtual {p0}, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->getKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    move-result-object v9

    .line 194
    .local v9, "layer":Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;
    if-eqz v0, :cond_0

    .line 195
    iget-object v1, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mLastAccessibilityKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    invoke-virtual {p0}, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->getCurrentView()Lcom/nuance/swype/input/KeyboardViewEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardViewEx;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v9, v10}, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->getAccessibilityLabel(Lcom/nuance/swype/input/KeyboardEx$Key;Lcom/nuance/input/swypecorelib/Shift$ShiftState;Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;Z)Ljava/lang/CharSequence;

    move-result-object v8

    .line 199
    .local v8, "label":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mLastAccessibilityKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v1, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    .line 200
    iget-object v1, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mLastAccessibilityKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v1, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mLastAccessibilityKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v1, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    array-length v1, v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mLastAccessibilityKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v1, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v1, v1, v10

    const/16 v2, 0xfea

    if-ne v1, v2, :cond_2

    .line 204
    invoke-virtual {p0}, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->getCurrentView()Lcom/nuance/swype/input/KeyboardViewEx;

    move-result-object v2

    invoke-virtual {p0}, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->getCurrentView()Lcom/nuance/swype/input/KeyboardViewEx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardViewEx;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v1

    sget-object v3, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mLastAccessibilityKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v1, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {v2, v1, v4, v5}, Lcom/nuance/swype/input/KeyboardViewEx;->notifyKeyboardListenerOnText(Ljava/lang/CharSequence;J)V

    .line 239
    .end local v0    # "accessibilityLabel":Lcom/nuance/swype/input/accessibility/AccessibilityLabel;
    .end local v8    # "label":Ljava/lang/CharSequence;
    .end local v9    # "layer":Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;
    :cond_0
    :goto_1
    iput-boolean v10, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->isExploring:Z

    .line 240
    return-void

    .line 204
    .restart local v0    # "accessibilityLabel":Lcom/nuance/swype/input/accessibility/AccessibilityLabel;
    .restart local v8    # "label":Ljava/lang/CharSequence;
    .restart local v9    # "layer":Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mLastAccessibilityKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v1, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedLabel:Ljava/lang/CharSequence;

    goto :goto_0

    .line 210
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->getCurrentView()Lcom/nuance/swype/input/KeyboardViewEx;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mLastAccessibilityKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v2, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lcom/nuance/swype/input/KeyboardViewEx;->notifyKeyboardListenerOnText(Ljava/lang/CharSequence;J)V

    goto :goto_1

    .line 213
    :cond_3
    iget-object v1, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mLastAccessibilityKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v1, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mLastAccessibilityKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v1, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    array-length v1, v1

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mLastAccessibilityKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v1, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v1, v1, v10

    const/16 v2, 0x9

    if-ne v1, v2, :cond_4

    .line 216
    invoke-virtual {p0}, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->getCurrentView()Lcom/nuance/swype/input/KeyboardViewEx;

    move-result-object v1

    new-instance v2, Landroid/graphics/Point;

    iget-object v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mLastAccessibilityKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget v3, v3, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    iget-object v4, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mLastAccessibilityKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget v4, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0}, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->getCurrentView()Lcom/nuance/swype/input/KeyboardViewEx;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mLastAccessibilityKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeycode(Lcom/nuance/swype/input/KeyboardEx$Key;)I

    move-result v3

    iget-object v4, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mLastAccessibilityKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v4, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual/range {v1 .. v7}, Lcom/nuance/swype/input/KeyboardViewEx;->notifyKeyboardListenerOnKey(Landroid/graphics/Point;I[ILcom/nuance/swype/input/KeyboardEx$Key;J)V

    goto :goto_1

    .line 220
    :cond_4
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ne v1, v3, :cond_5

    .line 221
    invoke-virtual {p0}, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->getCurrentView()Lcom/nuance/swype/input/KeyboardViewEx;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {v1, v8, v2, v3}, Lcom/nuance/swype/input/KeyboardViewEx;->notifyKeyboardListenerOnText(Ljava/lang/CharSequence;J)V

    goto :goto_1

    .line 223
    :cond_5
    iget-object v1, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mLastAccessibilityKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget v1, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->altCode:I

    const/16 v2, 0xb7a

    if-ne v1, v2, :cond_6

    .line 224
    invoke-virtual {p0}, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->getCurrentView()Lcom/nuance/swype/input/KeyboardViewEx;

    move-result-object v1

    new-instance v2, Landroid/graphics/Point;

    iget-object v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mLastAccessibilityKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget v3, v3, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    iget-object v4, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mLastAccessibilityKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget v4, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    iget-object v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mLastAccessibilityKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget v3, v3, Lcom/nuance/swype/input/KeyboardEx$Key;->altCode:I

    iget-object v4, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mLastAccessibilityKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v4, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual/range {v1 .. v7}, Lcom/nuance/swype/input/KeyboardViewEx;->notifyKeyboardListenerOnKey(Landroid/graphics/Point;I[ILcom/nuance/swype/input/KeyboardEx$Key;J)V

    goto/16 :goto_1

    .line 229
    :cond_6
    invoke-virtual {p0}, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->getCurrentView()Lcom/nuance/swype/input/KeyboardViewEx;

    move-result-object v1

    new-instance v2, Landroid/graphics/Point;

    iget-object v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mLastAccessibilityKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget v3, v3, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    iget-object v4, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mLastAccessibilityKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget v4, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0}, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->getCurrentView()Lcom/nuance/swype/input/KeyboardViewEx;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mLastAccessibilityKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeycode(Lcom/nuance/swype/input/KeyboardEx$Key;)I

    move-result v3

    iget-object v4, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mLastAccessibilityKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v4, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual/range {v1 .. v7}, Lcom/nuance/swype/input/KeyboardViewEx;->notifyKeyboardListenerOnKey(Landroid/graphics/Point;I[ILcom/nuance/swype/input/KeyboardEx$Key;J)V

    goto/16 :goto_1
.end method

.method public onEnter()V
    .locals 6

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->getCurrentView()Lcom/nuance/swype/input/KeyboardViewEx;

    move-result-object v1

    .line 312
    .local v1, "currentView":Lcom/nuance/swype/input/KeyboardViewEx;
    invoke-virtual {p0}, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->resetPlaySoundPlayedOnKeyboardExit()V

    .line 314
    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getAppPreferences()Lcom/nuance/swype/input/AppPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/AppPreferences;->getAccessibilityInfo()Lcom/nuance/swype/input/accessibility/AccessibilityInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->accessibilityInfo:Lcom/nuance/swype/input/accessibility/AccessibilityInfo;

    .line 315
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->isExploreByTouchOn:Z

    .line 316
    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 317
    .local v0, "app":Lcom/nuance/swype/input/IMEApplication;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 318
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->isExploreByTouchOn()Z

    move-result v2

    iput-boolean v2, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->isExploreByTouchOn:Z

    .line 320
    :cond_0
    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardViewEx;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$dimen;->keyboard_top_exit_threshold:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->keyboardTopExitThreshold:I

    .line 321
    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardViewEx;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$dimen;->scrub_gesture_being_value:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->scrubGestureBeingValue:I

    .line 323
    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardViewEx;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$integer;->accessibility_explore_speed_threshold_factor:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-double v2, v2

    iput-wide v2, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->thresholdSpeedFactor:D

    .line 324
    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardViewEx;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$integer;->accessibility_explore_speed_threshold:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    float-to-double v2, v2

    iget-wide v4, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->thresholdSpeedFactor:D

    div-double/2addr v2, v4

    iput-wide v2, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->thresholdSpeed:D

    .line 325
    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardViewEx;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$integer;->accessibility_explore_minimum_move_time:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->minimumMoveTime:I

    .line 326
    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardViewEx;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$integer;->accessibility_explore_max_speed:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-double v2, v2

    iput-wide v2, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->lastSpeed:D

    .line 328
    invoke-virtual {p0}, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->getCurrentView()Lcom/nuance/swype/input/KeyboardViewEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$integer;->first_key_delay_timeout:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->tapHoldDuration:I

    .line 330
    invoke-virtual {p0}, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->getCurrentView()Lcom/nuance/swype/input/KeyboardViewEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$dimen;->hover_exit_adjustment_width_offset_exploration_state_low:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->hover_exit_adjustment_width_offset_low:I

    .line 332
    invoke-virtual {p0}, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->getCurrentView()Lcom/nuance/swype/input/KeyboardViewEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$dimen;->hover_exit_adjustment_width_offset_exploration_state_high:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->hover_exit_adjustment_width_offset_high:I

    .line 335
    iget v2, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->hover_exit_adjustment_width_offset_low:I

    iput v2, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->hover_exit_adjustment_width_offset:I

    .line 337
    return-void
.end method

.method public onExit()V
    .locals 0

    .prologue
    .line 341
    return-void
.end method

.method public populateEventData(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 250
    iget-object v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->accessibilityInfo:Lcom/nuance/swype/input/accessibility/AccessibilityInfo;

    invoke-virtual {v3}, Lcom/nuance/swype/input/accessibility/AccessibilityInfo;->getAccessibilityLabel()Lcom/nuance/swype/input/accessibility/AccessibilityLabel;

    move-result-object v0

    .line 251
    .local v0, "accessibilityLabel":Lcom/nuance/swype/input/accessibility/AccessibilityLabel;
    if-nez v0, :cond_1

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->getKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    move-result-object v2

    .line 257
    .local v2, "layer":Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;
    iget-object v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mCurrentAccessibilityKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    if-eqz v3, :cond_0

    .line 258
    iget-object v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mCurrentAccessibilityKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    invoke-virtual {p0}, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->getCurrentView()Lcom/nuance/swype/input/KeyboardViewEx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardViewEx;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v4

    iget-boolean v5, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->isFirstTime:Z

    invoke-virtual {v0, v3, v4, v2, v5}, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->getAccessibilityLabel(Lcom/nuance/swype/input/KeyboardEx$Key;Lcom/nuance/input/swypecorelib/Shift$ShiftState;Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;Z)Ljava/lang/CharSequence;

    move-result-object v1

    .line 259
    .local v1, "label":Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mCurrentAccessibilityKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v4, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mLastAccessibilityKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    if-eq v3, v4, :cond_2

    .line 260
    iget-object v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->accessibilityInfo:Lcom/nuance/swype/input/accessibility/AccessibilityInfo;

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->interruptTalkbackIfRequired(Lcom/nuance/swype/input/accessibility/AccessibilityInfo;)V

    .line 261
    invoke-virtual {p0, p1, v1}, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->setAccessibilityEventText(Landroid/view/accessibility/AccessibilityEvent;Ljava/lang/CharSequence;)V

    .line 263
    :cond_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->isFirstTime:Z

    goto :goto_0
.end method
