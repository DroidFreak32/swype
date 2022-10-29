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

.field private validInputConfirmed:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const-string/jumbo v0, "ExplorationState"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;-><init>()V

    .line 61
    new-instance v0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState$1;-><init>(Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;)V

    iput-object v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;Lcom/nuance/swype/input/KeyboardEx$Key;)Lcom/nuance/swype/input/KeyboardEx$Key;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;
    .param p1, "x1"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mLastAccessibilityKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    return-object p1
.end method

.method static synthetic access$102(Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mFirstKeyDelayCompleted:Z

    return p1
.end method

.method static synthetic access$202(Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->validInputConfirmed:Z

    return p1
.end method

.method public static getInstance()Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;
    .registers 1

    .prologue
    .line 38
    sget-object v0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->instance:Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;

    if-nez v0, :cond_b

    .line 39
    new-instance v0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;

    invoke-direct {v0}, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;-><init>()V

    sput-object v0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->instance:Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;

    .line 41
    :cond_b
    sget-object v0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->instance:Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;

    return-object v0
.end method

.method private isTooFast(Landroid/graphics/Point;J)Z
    .registers 22
    .param p1, "point"    # Landroid/graphics/Point;
    .param p2, "currentTime"    # J

    .prologue
    .line 271
    if-nez p1, :cond_4

    .line 272
    const/4 v8, 0x0

    .line 300
    :goto_3
    return v8

    .line 274
    :cond_4
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mLastPoint:Landroid/graphics/Point;

    if-nez v9, :cond_29

    .line 275
    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mLastPoint:Landroid/graphics/Point;

    .line 276
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mLastPoint:Landroid/graphics/Point;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/graphics/Point;->x:I

    iput v14, v9, Landroid/graphics/Point;->x:I

    .line 277
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mLastPoint:Landroid/graphics/Point;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/graphics/Point;->y:I

    iput v14, v9, Landroid/graphics/Point;->y:I

    .line 278
    const/4 v8, 0x0

    goto :goto_3

    .line 281
    :cond_29
    move-object/from16 v0, p1

    iget v9, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mLastPoint:Landroid/graphics/Point;

    iget v14, v14, Landroid/graphics/Point;->x:I

    sub-int/2addr v9, v14

    int-to-double v2, v9

    .line 282
    .local v2, "diffX":D
    move-object/from16 v0, p1

    iget v9, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mLastPoint:Landroid/graphics/Point;

    iget v14, v14, Landroid/graphics/Point;->y:I

    sub-int/2addr v9, v14

    int-to-double v4, v9

    .line 283
    .local v4, "diffY":D
    mul-double v14, v2, v2

    mul-double v16, v4, v4

    add-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 285
    .local v6, "distance":D
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mLastEventTime:J

    sub-long v14, p2, v14

    long-to-double v12, v14

    .line 287
    .local v12, "time":D
    div-double v10, v6, v12

    .line 289
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

    if-lez v9, :cond_82

    const/4 v8, 0x1

    .line 290
    .local v8, "fast":Z
    :goto_69
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->lastSpeed:D

    .line 292
    move-object/from16 v0, p0

    iget v9, v0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->minimumMoveTime:I

    int-to-double v14, v9

    cmpg-double v9, v12, v14

    if-gez v9, :cond_77

    .line 293
    const/4 v8, 0x1

    .line 295
    :cond_77
    if-eqz v8, :cond_84

    .line 296
    move-object/from16 v0, p0

    iget v9, v0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->hover_exit_adjustment_width_offset_high:I

    move-object/from16 v0, p0

    iput v9, v0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->hover_exit_adjustment_width_offset:I

    goto :goto_3

    .line 289
    .end local v8    # "fast":Z
    :cond_82
    const/4 v8, 0x0

    goto :goto_69

    .line 298
    .restart local v8    # "fast":Z
    :cond_84
    move-object/from16 v0, p0

    iget v9, v0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->hover_exit_adjustment_width_offset_low:I

    move-object/from16 v0, p0

    iput v9, v0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->hover_exit_adjustment_width_offset:I

    goto/16 :goto_3
.end method

.method private setKeyboardModel(Lcom/nuance/swype/input/KeyboardViewEx$Pointer;)V
    .registers 4
    .param p1, "pointer"    # Lcom/nuance/swype/input/KeyboardViewEx$Pointer;

    .prologue
    .line 102
    invoke-static {}, Lcom/nuance/swype/input/accessibility/KeyboardModel;->getInstance()Lcom/nuance/swype/input/accessibility/KeyboardModel;

    move-result-object v0

    .line 103
    .local v0, "keyboardModel":Lcom/nuance/swype/input/accessibility/KeyboardModel;
    invoke-virtual {p0}, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->getCurrentView()Lcom/nuance/swype/input/KeyboardViewEx;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/accessibility/KeyboardModel;->setKeyboardContext(Lcom/nuance/swype/input/KeyboardViewEx;)V

    .line 104
    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/accessibility/KeyboardModel;->setPointer(Lcom/nuance/swype/input/KeyboardViewEx$Pointer;)V

    .line 105
    iget-object v1, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mCurrentAccessibilityKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/accessibility/KeyboardModel;->setCurrentKey(Lcom/nuance/swype/input/KeyboardEx$Key;)V

    .line 106
    return-void
.end method


# virtual methods
.method public confirmValidInput()Z
    .registers 2

    .prologue
    .line 338
    iget-boolean v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->isExploring:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->validInputConfirmed:Z

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public handleActionCancel(Lcom/nuance/swype/input/KeyboardViewEx$Pointer;)V
    .registers 2
    .param p1, "pointer"    # Lcom/nuance/swype/input/KeyboardViewEx$Pointer;

    .prologue
    .line 240
    return-void
.end method

.method public handleActionDown(Lcom/nuance/swype/input/KeyboardViewEx$Pointer;Lcom/nuance/swype/input/KeyboardEx$Key;)V
    .registers 9
    .param p1, "pointer"    # Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    .param p2, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 79
    iget-object v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 80
    iput-boolean v4, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->validInputConfirmed:Z

    .line 81
    iput-boolean v5, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->isExploring:Z

    .line 82
    invoke-virtual {p0}, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->getCurrentView()Lcom/nuance/swype/input/KeyboardViewEx;

    move-result-object v0

    .line 83
    .local v0, "currentView":Lcom/nuance/swype/input/KeyboardViewEx;
    iput-boolean v4, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->isFirstTime:Z

    .line 84
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mLastPoint:Landroid/graphics/Point;

    .line 85
    iput-boolean v5, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mFirstKeyDelayCompleted:Z

    .line 86
    if-eqz v0, :cond_48

    .line 87
    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/IME;->closeLanguageList()V

    .line 88
    invoke-virtual {p1}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getCurrentLocation()Landroid/graphics/Point;

    move-result-object v2

    .line 89
    .local v2, "point":Landroid/graphics/Point;
    iput-object p2, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mCurrentAccessibilityKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 90
    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v4, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->hover_exit_adjustment_width_offset_low:I

    if-lt v3, v4, :cond_3e

    iget v3, v2, Landroid/graphics/Point;->x:I

    .line 91
    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardViewEx;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->hover_exit_adjustment_width_offset_low:I

    sub-int/2addr v4, v5

    if-le v3, v4, :cond_41

    .line 93
    :cond_3e
    invoke-virtual {p0}, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->playSoundPlayedOnKeyboardExit()V

    .line 95
    :cond_41
    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->getFrozenPointerState(Lcom/nuance/swype/input/KeyboardViewEx$Pointer;)Lcom/nuance/swype/input/KeyboardViewEx$Pointer;

    move-result-object v1

    .line 96
    .local v1, "initialPointer":Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    invoke-direct {p0, v1}, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->setKeyboardModel(Lcom/nuance/swype/input/KeyboardViewEx$Pointer;)V

    .line 99
    .end local v1    # "initialPointer":Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    .end local v2    # "point":Landroid/graphics/Point;
    :cond_48
    return-void
.end method

.method public handleActionMove(Lcom/nuance/swype/input/KeyboardViewEx$Pointer;Lcom/nuance/swype/input/KeyboardEx$Key;)V
    .registers 15
    .param p1, "pointer"    # Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    .param p2, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 110
    invoke-virtual {p0}, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->getCurrentView()Lcom/nuance/swype/input/KeyboardViewEx;

    move-result-object v2

    .line 111
    .local v2, "currentView":Lcom/nuance/swype/input/KeyboardViewEx;
    invoke-virtual {p1}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getCurrentLocation()Landroid/graphics/Point;

    move-result-object v0

    .line 113
    .local v0, "currentPoint":Landroid/graphics/Point;
    iget v3, v0, Landroid/graphics/Point;->y:I

    iget v6, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->keyboardTopExitThreshold:I

    if-lt v3, v6, :cond_2a

    iget v3, v0, Landroid/graphics/Point;->y:I

    .line 114
    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardViewEx;->getHeight()I

    move-result v6

    if-gt v3, v6, :cond_2a

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v6, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->hover_exit_adjustment_width_offset_low:I

    if-lt v3, v6, :cond_2a

    iget v3, v0, Landroid/graphics/Point;->x:I

    .line 116
    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardViewEx;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->hover_exit_adjustment_width_offset_low:I

    sub-int/2addr v6, v7

    if-le v3, v6, :cond_8a

    .line 118
    :cond_2a
    invoke-virtual {p0}, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->playSoundPlayedOnKeyboardExit()V

    .line 123
    :goto_2d
    instance-of v3, v2, Lcom/nuance/swype/input/InputView;

    if-eqz v3, :cond_48

    move-object v3, v2

    check-cast v3, Lcom/nuance/swype/input/InputView;

    .line 124
    invoke-virtual {v3}, Lcom/nuance/swype/input/InputView;->getWordCandidateListContainer()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_48

    move-object v3, v2

    .line 127
    check-cast v3, Lcom/nuance/swype/input/InputView;

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputView;->getWordCandidateListContainer()Landroid/view/View;

    move-result-object v3

    .line 128
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    neg-int v3, v3

    iput v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->scrubGestureBeingValue:I

    .line 131
    :cond_48
    sget-object v3, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "ExplorationState currentpoint y:"

    aput-object v7, v6, v10

    iget v7, v0, Landroid/graphics/Point;->y:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    const-string/jumbo v7, " scrubGestureBeingValue:"

    aput-object v7, v6, v11

    const/4 v7, 0x3

    iget v8, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->scrubGestureBeingValue:I

    .line 132
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    .line 131
    invoke-interface {v3, v6}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 134
    iget v3, v0, Landroid/graphics/Point;->y:I

    iget v6, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->scrubGestureBeingValue:I

    if-ge v3, v6, :cond_8e

    .line 135
    sget-object v3, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v6, v9, [Ljava/lang/Object;

    const-string/jumbo v7, "ExplorationState on top of WCL"

    aput-object v7, v6, v10

    invoke-interface {v3, v6}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 136
    invoke-static {}, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->getInstance()Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->changeState(Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;)V

    .line 137
    iget-object v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 171
    :goto_89
    return-void

    .line 120
    :cond_8a
    invoke-virtual {p0}, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->resetPlaySoundPlayedOnKeyboardExit()V

    goto :goto_2d

    .line 141
    :cond_8e
    iput-object p2, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mCurrentAccessibilityKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 142
    iput-boolean v9, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->isExploring:Z

    .line 144
    iget-object v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mCurrentAccessibilityKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    if-eqz v3, :cond_d5

    iget-object v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mLastAccessibilityKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    if-eqz v3, :cond_a0

    iget-object v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mCurrentAccessibilityKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v6, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mLastAccessibilityKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    if-eq v3, v6, :cond_d5

    .line 147
    :cond_a0
    invoke-virtual {p1}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getCurrentTime()J

    move-result-wide v4

    .line 148
    .local v4, "time":J
    invoke-direct {p0, v0, v4, v5}, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->isTooFast(Landroid/graphics/Point;J)Z

    move-result v3

    iput-boolean v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->isTooFast:Z

    .line 149
    iget-boolean v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->isTooFast:Z

    if-nez v3, :cond_dd

    .line 151
    iget-boolean v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->isExploreByTouchOn:Z

    if-eqz v3, :cond_c3

    invoke-virtual {p0}, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->shouldSpeakForPassword()Z

    move-result v3

    if-eqz v3, :cond_c3

    .line 152
    invoke-static {}, Lcom/nuance/swype/input/accessibility/AccessibilityNotification;->getInstance()Lcom/nuance/swype/input/accessibility/AccessibilityNotification;

    move-result-object v3

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/nuance/swype/input/accessibility/AccessibilityNotification;->speak(Landroid/content/Context;)V

    .line 154
    :cond_c3
    iget-object v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mCurrentAccessibilityKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iput-object v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mLastAccessibilityKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 155
    iget-object v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mLastPoint:Landroid/graphics/Point;

    iget v6, v0, Landroid/graphics/Point;->x:I

    iput v6, v3, Landroid/graphics/Point;->x:I

    .line 156
    iget-object v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mLastPoint:Landroid/graphics/Point;

    iget v6, v0, Landroid/graphics/Point;->y:I

    iput v6, v3, Landroid/graphics/Point;->y:I

    .line 157
    iput-wide v4, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mLastEventTime:J

    .line 169
    .end local v4    # "time":J
    :cond_d5
    :goto_d5
    invoke-virtual {v2, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->getFrozenPointerState(Lcom/nuance/swype/input/KeyboardViewEx$Pointer;)Lcom/nuance/swype/input/KeyboardViewEx$Pointer;

    move-result-object v1

    .line 170
    .local v1, "currentPointer":Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    invoke-direct {p0, v1}, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->setKeyboardModel(Lcom/nuance/swype/input/KeyboardViewEx$Pointer;)V

    goto :goto_89

    .line 160
    .end local v1    # "currentPointer":Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    .restart local v4    # "time":J
    :cond_dd
    iget-object v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mCurrentAccessibilityKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    if-eqz v3, :cond_d5

    .line 161
    invoke-static {}, Lcom/nuance/swype/input/accessibility/SoundResources;->getInstance()Lcom/nuance/swype/input/accessibility/SoundResources;

    move-result-object v3

    if-eqz v3, :cond_d5

    iget-object v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mLastKeyUsedForClick:Lcom/nuance/swype/input/KeyboardEx$Key;

    if-eqz v3, :cond_f1

    iget-object v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mLastKeyUsedForClick:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v6, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mCurrentAccessibilityKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    if-eq v3, v6, :cond_d5

    .line 164
    :cond_f1
    invoke-static {}, Lcom/nuance/swype/input/accessibility/SoundResources;->getInstance()Lcom/nuance/swype/input/accessibility/SoundResources;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/nuance/swype/input/accessibility/SoundResources;->play(I)V

    .line 165
    iget-object v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mCurrentAccessibilityKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iput-object v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mLastKeyUsedForClick:Lcom/nuance/swype/input/KeyboardEx$Key;

    goto :goto_d5
.end method

.method public handleActionUp(Lcom/nuance/swype/input/KeyboardViewEx$Pointer;Lcom/nuance/swype/input/KeyboardEx$Key;)V
    .registers 5
    .param p1, "pointer"    # Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    .param p2, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 233
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->isExploring:Z

    .line 234
    return-void
.end method

.method public onEnter()V
    .registers 7

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->getCurrentView()Lcom/nuance/swype/input/KeyboardViewEx;

    move-result-object v0

    .line 306
    .local v0, "currentView":Lcom/nuance/swype/input/KeyboardViewEx;
    invoke-virtual {p0}, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->resetPlaySoundPlayedOnKeyboardExit()V

    .line 308
    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getAppPreferences()Lcom/nuance/swype/input/AppPreferences;

    move-result-object v1

    .line 309
    invoke-virtual {v1}, Lcom/nuance/swype/input/AppPreferences;->getAccessibilityInfo()Lcom/nuance/swype/input/accessibility/AccessibilityInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->accessibilityInfo:Lcom/nuance/swype/input/accessibility/AccessibilityInfo;

    .line 310
    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v1

    .line 311
    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->isAccessibilitySupportEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->isExploreByTouchOn:Z

    .line 312
    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardViewEx;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/nuance/swype/input/R$dimen;->keyboard_top_exit_threshold:I

    .line 313
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->keyboardTopExitThreshold:I

    .line 314
    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardViewEx;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/nuance/swype/input/R$dimen;->scrub_gesture_being_value:I

    .line 315
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->scrubGestureBeingValue:I

    .line 317
    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardViewEx;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/nuance/swype/input/R$integer;->accessibility_explore_speed_threshold_factor:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-double v2, v1

    .line 318
    .local v2, "thresholdSpeedFactor":D
    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardViewEx;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/nuance/swype/input/R$integer;->accessibility_explore_speed_threshold:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    float-to-double v4, v1

    div-double/2addr v4, v2

    iput-wide v4, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->thresholdSpeed:D

    .line 319
    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardViewEx;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/nuance/swype/input/R$integer;->accessibility_explore_minimum_move_time:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->minimumMoveTime:I

    .line 320
    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardViewEx;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/nuance/swype/input/R$integer;->accessibility_explore_max_speed:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-double v4, v1

    iput-wide v4, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->lastSpeed:D

    .line 322
    invoke-virtual {p0}, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->getCurrentView()Lcom/nuance/swype/input/KeyboardViewEx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/nuance/swype/input/R$integer;->first_key_delay_timeout:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->tapHoldDuration:I

    .line 324
    invoke-virtual {p0}, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->getCurrentView()Lcom/nuance/swype/input/KeyboardViewEx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/nuance/swype/input/R$dimen;->hover_exit_adjustment_width_offset_exploration_state_low:I

    .line 325
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->hover_exit_adjustment_width_offset_low:I

    .line 326
    invoke-virtual {p0}, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->getCurrentView()Lcom/nuance/swype/input/KeyboardViewEx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/nuance/swype/input/R$dimen;->hover_exit_adjustment_width_offset_exploration_state_high:I

    .line 327
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->hover_exit_adjustment_width_offset_high:I

    .line 329
    iget v1, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->hover_exit_adjustment_width_offset_low:I

    iput v1, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->hover_exit_adjustment_width_offset:I

    .line 331
    return-void
.end method

.method public onExit()V
    .registers 1

    .prologue
    .line 335
    return-void
.end method

.method public populateEventData(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 8
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 244
    iget-object v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->accessibilityInfo:Lcom/nuance/swype/input/accessibility/AccessibilityInfo;

    invoke-virtual {v3}, Lcom/nuance/swype/input/accessibility/AccessibilityInfo;->getAccessibilityLabel()Lcom/nuance/swype/input/accessibility/AccessibilityLabel;

    move-result-object v0

    .line 245
    .local v0, "accessibilityLabel":Lcom/nuance/swype/input/accessibility/AccessibilityLabel;
    if-nez v0, :cond_9

    .line 260
    :cond_8
    :goto_8
    return-void

    .line 249
    :cond_9
    invoke-virtual {p0}, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->getKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    move-result-object v2

    .line 251
    .local v2, "layer":Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;
    iget-object v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mCurrentAccessibilityKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    if-eqz v3, :cond_8

    .line 252
    iget-object v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mCurrentAccessibilityKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 253
    invoke-virtual {p0}, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->getCurrentView()Lcom/nuance/swype/input/KeyboardViewEx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardViewEx;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v4

    iget-boolean v5, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->isFirstTime:Z

    .line 252
    invoke-virtual {v0, v3, v4, v2, v5}, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->getAccessibilityLabel(Lcom/nuance/swype/input/KeyboardEx$Key;Lcom/nuance/input/swypecorelib/Shift$ShiftState;Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;Z)Ljava/lang/CharSequence;

    move-result-object v1

    .line 254
    .local v1, "label":Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mCurrentAccessibilityKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v4, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->mLastAccessibilityKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    if-eq v3, v4, :cond_2f

    .line 255
    iget-object v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->accessibilityInfo:Lcom/nuance/swype/input/accessibility/AccessibilityInfo;

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->interruptTalkbackIfRequired(Lcom/nuance/swype/input/accessibility/AccessibilityInfo;)V

    .line 256
    invoke-virtual {p0, p1, v1}, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->setAccessibilityEventText(Landroid/view/accessibility/AccessibilityEvent;Ljava/lang/CharSequence;)V

    .line 258
    :cond_2f
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->isFirstTime:Z

    goto :goto_8
.end method
