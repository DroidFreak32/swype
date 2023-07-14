.class public Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;
.super Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;
.source "WordSelectionState.java"

# interfaces
.implements Lcom/nuance/swype/input/CandidatesListView$CandidateListener;
.implements Lcom/nuance/swype/input/accessibility/choiceSelection/ISelectionChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState$ACTION_TYPE;
    }
.end annotation


# static fields
.field private static instance:Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;

.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private accessibilityInfo:Lcom/nuance/swype/input/accessibility/AccessibilityInfo;

.field private actionType:Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState$ACTION_TYPE;

.field private cancelStr:Ljava/lang/String;

.field private currentSelection:Ljava/lang/String;

.field private defaultWord:Ljava/lang/String;

.field private defaultWordSpokenOnce:Z

.field private handlingActionUp:Z

.field private hasScrubbingStarted:Z

.field private isListInitialize:Z

.field private isStartPointInitialize:Z

.field private mLastEventTime:J

.field private mLastPoint:Landroid/graphics/Point;

.field private minimumMoveTime:I

.field scrubGesture:Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureStrategy;

.field private thresholdSpeed:D

.field wordChoiceListCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string/jumbo v0, "WordSelectionState"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;-><init>()V

    .line 71
    sget-object v0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState$ACTION_TYPE;->DEFAULT_SELECTION:Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState$ACTION_TYPE;

    iput-object v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->actionType:Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState$ACTION_TYPE;

    .line 72
    return-void
.end method

.method private checkStartPointInitialization(Landroid/graphics/Point;)V
    .locals 2
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->isStartPointInitialize:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->scrubGesture:Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureStrategy;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->scrubGesture:Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureStrategy;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureStrategy;->setStartPoint(Landroid/graphics/Point;I)V

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->isStartPointInitialize:Z

    .line 128
    :cond_0
    return-void
.end method

.method private getCandidateListView()Lcom/nuance/swype/input/CandidatesListView;
    .locals 3

    .prologue
    .line 156
    const/4 v0, 0x0

    .line 157
    .local v0, "candidateListView":Lcom/nuance/swype/input/CandidatesListView;
    invoke-virtual {p0}, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->getCurrentView()Lcom/nuance/swype/input/KeyboardViewEx;

    move-result-object v1

    .line 158
    .local v1, "currentView":Lcom/nuance/swype/input/KeyboardViewEx;
    if-eqz v1, :cond_0

    .line 159
    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v2

    .line 160
    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v2

    .line 161
    invoke-virtual {v2}, Lcom/nuance/swype/input/InputView;->getCandidatesListView()Lcom/nuance/swype/input/CandidatesListView;

    move-result-object v0

    .line 163
    :cond_0
    return-object v0
.end method

.method public static getInstance()Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->instance:Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;

    invoke-direct {v0}, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;-><init>()V

    sput-object v0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->instance:Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;

    .line 66
    :cond_0
    sget-object v0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->instance:Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;

    return-object v0
.end method

.method private insertWordToBuffer(Ljava/lang/String;)V
    .locals 1
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->getCurrentView()Lcom/nuance/swype/input/KeyboardViewEx;

    move-result-object v0

    .line 167
    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->replaceActiveTextWith(Ljava/lang/String;)V

    .line 170
    :cond_0
    return-void
.end method

.method private isTooFast(Landroid/graphics/Point;J)Z
    .locals 12
    .param p1, "point"    # Landroid/graphics/Point;
    .param p2, "currentTime"    # J

    .prologue
    const/4 v2, 0x0

    .line 334
    if-nez p1, :cond_0

    .line 363
    :goto_0
    return v2

    .line 337
    :cond_0
    iget-object v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->mLastPoint:Landroid/graphics/Point;

    if-nez v3, :cond_1

    .line 338
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iput-object v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->mLastPoint:Landroid/graphics/Point;

    .line 339
    iget-object v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->mLastPoint:Landroid/graphics/Point;

    iget v6, p1, Landroid/graphics/Point;->x:I

    iput v6, v3, Landroid/graphics/Point;->x:I

    .line 340
    iget-object v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->mLastPoint:Landroid/graphics/Point;

    iget v6, p1, Landroid/graphics/Point;->y:I

    iput v6, v3, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 344
    :cond_1
    iget v3, p1, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->mLastPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v6

    int-to-double v6, v3

    .line 345
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 347
    .local v0, "distance":D
    iget-wide v6, p0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->mLastEventTime:J

    sub-long v6, p2, v6

    long-to-double v4, v6

    .line 349
    .local v4, "time":D
    div-double v6, v0, v4

    .line 350
    iget-wide v8, p0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->thresholdSpeed:D

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    cmpl-double v3, v6, v8

    if-lez v3, :cond_2

    const/4 v2, 0x1

    .line 352
    .local v2, "fast":Z
    :cond_2
    const/16 v3, 0x19

    iput v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->minimumMoveTime:I

    .line 353
    iget v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->minimumMoveTime:I

    int-to-double v6, v3

    cmpg-double v3, v4, v6

    if-gez v3, :cond_3

    .line 354
    const/4 v2, 0x1

    .line 357
    :cond_3
    if-eqz v2, :cond_4

    .line 358
    iget v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->hover_exit_adjustment_width_offset_high:I

    iput v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->hover_exit_adjustment_width_offset:I

    goto :goto_0

    .line 360
    :cond_4
    iget v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->hover_exit_adjustment_width_offset_low:I

    iput v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->hover_exit_adjustment_width_offset:I

    goto :goto_0
.end method

.method private replaceActiveTextWith(Ljava/lang/String;)V
    .locals 1
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->getCandidateListView()Lcom/nuance/swype/input/CandidatesListView;

    move-result-object v0

    .line 150
    .local v0, "candidateListView":Lcom/nuance/swype/input/CandidatesListView;
    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/CandidatesListView;->selectCandidateTriggedByExternalSource(Ljava/lang/String;)Z

    .line 153
    :cond_0
    return-void
.end method

.method private setCurrentSelection(Ljava/lang/String;)V
    .locals 0
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->currentSelection:Ljava/lang/String;

    .line 88
    return-void
.end method

.method private speakDefaultWordOnEnter()V
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->defaultWordSpokenOnce:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->defaultWord:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->isListInitialize:Z

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->defaultWord:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->selectionChanged(Ljava/lang/String;)V

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->defaultWordSpokenOnce:Z

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->hasScrubbingStarted:Z

    .line 122
    :cond_0
    return-void
.end method

.method private speakSelectedChoice()V
    .locals 5

    .prologue
    .line 230
    sget-object v1, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "WordSelectionState speakSelectedChoice defaultWord:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->defaultWord:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 231
    invoke-virtual {p0}, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->getCurrentView()Lcom/nuance/swype/input/KeyboardViewEx;

    move-result-object v0

    .line 232
    .local v0, "currentView":Lcom/nuance/swype/input/KeyboardViewEx;
    if-eqz v0, :cond_0

    .line 233
    invoke-static {}, Lcom/nuance/swype/input/accessibility/AccessibilityNotification;->getInstance()Lcom/nuance/swype/input/accessibility/AccessibilityNotification;

    move-result-object v1

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/accessibility/AccessibilityNotification;->speak(Landroid/content/Context;)V

    .line 235
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelSelection()V
    .locals 0

    .prologue
    .line 213
    return-void
.end method

.method public candidatesToList(Lcom/nuance/input/swypecorelib/Candidates;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/input/swypecorelib/Candidates;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 312
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 313
    .local v1, "wordChoiceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 314
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Candidates;->getCandidates()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/input/swypecorelib/WordCandidate;

    .line 315
    .local v0, "candidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 318
    .end local v0    # "candidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    :cond_0
    return-object v1
.end method

.method public handleActionCancel(Lcom/nuance/swype/input/KeyboardViewEx$Pointer;)V
    .locals 0
    .param p1, "pointer"    # Lcom/nuance/swype/input/KeyboardViewEx$Pointer;

    .prologue
    .line 177
    return-void
.end method

.method public handleActionDown(Lcom/nuance/swype/input/KeyboardViewEx$Pointer;Lcom/nuance/swype/input/KeyboardEx$Key;)V
    .locals 0
    .param p1, "pointer"    # Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    .param p2, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 94
    return-void
.end method

.method public handleActionMove(Lcom/nuance/swype/input/KeyboardViewEx$Pointer;Lcom/nuance/swype/input/KeyboardEx$Key;)V
    .locals 5
    .param p1, "pointer"    # Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    .param p2, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 98
    invoke-virtual {p1}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getCurrentLocation()Landroid/graphics/Point;

    move-result-object v0

    .line 99
    .local v0, "currentPoint":Landroid/graphics/Point;
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->checkStartPointInitialization(Landroid/graphics/Point;)V

    .line 100
    invoke-virtual {p1}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getCurrentTime()J

    move-result-wide v2

    .line 101
    .local v2, "time":J
    invoke-direct {p0, v0, v2, v3}, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->isTooFast(Landroid/graphics/Point;J)Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->isTooFast:Z

    .line 102
    iget-boolean v1, p0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->isTooFast:Z

    if-nez v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->mLastPoint:Landroid/graphics/Point;

    iget v4, v0, Landroid/graphics/Point;->x:I

    iput v4, v1, Landroid/graphics/Point;->x:I

    .line 104
    iget-object v1, p0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->mLastPoint:Landroid/graphics/Point;

    iget v4, v0, Landroid/graphics/Point;->y:I

    iput v4, v1, Landroid/graphics/Point;->y:I

    .line 105
    iput-wide v2, p0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->mLastEventTime:J

    .line 108
    :cond_0
    iget-boolean v1, p0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->hasScrubbingStarted:Z

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getCurrentLocation()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-lez v1, :cond_1

    .line 109
    invoke-static {}, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->getInstance()Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->changeState(Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;)V

    .line 113
    :goto_0
    return-void

    .line 112
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->scrubGesture:Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureStrategy;

    invoke-virtual {p1}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getCurrentLocation()Landroid/graphics/Point;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureStrategy;->handleMove(Landroid/graphics/Point;)V

    goto :goto_0
.end method

.method public handleActionUp(Lcom/nuance/swype/input/KeyboardViewEx$Pointer;Lcom/nuance/swype/input/KeyboardEx$Key;)V
    .locals 2
    .param p1, "pointer"    # Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    .param p2, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->handlingActionUp:Z

    .line 133
    sget-object v0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState$1;->$SwitchMap$com$nuance$swype$input$accessibility$statemachine$WordSelectionState$ACTION_TYPE:[I

    iget-object v1, p0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->actionType:Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState$ACTION_TYPE;

    invoke-virtual {v1}, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState$ACTION_TYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 141
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->currentSelection:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->currentSelection:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->insertWordToBuffer(Ljava/lang/String;)V

    .line 145
    :cond_0
    :pswitch_0
    invoke-static {}, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->getInstance()Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->changeState(Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;)V

    .line 146
    return-void

    .line 133
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public initializeList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "choices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    new-instance v0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureStrategy;

    invoke-direct {v0}, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureStrategy;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->scrubGesture:Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureStrategy;

    .line 76
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->scrubGesture:Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureStrategy;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureStrategy;->setChoices(Ljava/util/List;)V

    .line 77
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->scrubGesture:Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureStrategy;

    invoke-virtual {v0, p0}, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureStrategy;->setSelectionChangeListener(Lcom/nuance/swype/input/accessibility/choiceSelection/ISelectionChangeListener;)V

    .line 78
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->scrubGesture:Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureStrategy;

    invoke-virtual {v0}, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureStrategy;->addCancel()V

    .line 80
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->defaultWord:Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->defaultWord:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->setCurrentSelection(Ljava/lang/String;)V

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->isListInitialize:Z

    .line 84
    :cond_0
    return-void
.end method

.method public onCandidatesUpdated(Lcom/nuance/input/swypecorelib/Candidates;)V
    .locals 1
    .param p1, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 305
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->isListInitialize:Z

    .line 306
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->candidatesToList(Lcom/nuance/input/swypecorelib/Candidates;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->wordChoiceListCache:Ljava/util/ArrayList;

    .line 307
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->wordChoiceListCache:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->initializeList(Ljava/util/ArrayList;)V

    .line 308
    return-void
.end method

.method public onEnter()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 244
    invoke-virtual {p0}, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->getCurrentView()Lcom/nuance/swype/input/KeyboardViewEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getAppPreferences()Lcom/nuance/swype/input/AppPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/AppPreferences;->getAccessibilityInfo()Lcom/nuance/swype/input/accessibility/AccessibilityInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->accessibilityInfo:Lcom/nuance/swype/input/accessibility/AccessibilityInfo;

    .line 245
    invoke-virtual {p0}, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->getCurrentView()Lcom/nuance/swype/input/KeyboardViewEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardViewEx;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$integer;->accessibility_explore_speed_threshold_factor:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-double v0, v2

    .line 246
    .local v0, "thresholdSpeedFactor":D
    invoke-virtual {p0}, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->getCurrentView()Lcom/nuance/swype/input/KeyboardViewEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardViewEx;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$integer;->accessibility_explore_speed_threshold:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    float-to-double v2, v2

    div-double/2addr v2, v0

    iput-wide v2, p0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->thresholdSpeed:D

    .line 247
    invoke-virtual {p0}, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->getCurrentView()Lcom/nuance/swype/input/KeyboardViewEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardViewEx;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$integer;->accessibility_explore_minimum_move_time:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->minimumMoveTime:I

    .line 248
    invoke-virtual {p0}, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->getCurrentView()Lcom/nuance/swype/input/KeyboardViewEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$dimen;->hover_exit_adjustment_width_offset_word_selection_state_low:I

    .line 249
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->hover_exit_adjustment_width_offset_low:I

    .line 250
    invoke-virtual {p0}, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->getCurrentView()Lcom/nuance/swype/input/KeyboardViewEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$dimen;->hover_exit_adjustment_width_offset_word_selection_state_high:I

    .line 251
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->hover_exit_adjustment_width_offset_high:I

    .line 252
    iget v2, p0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->hover_exit_adjustment_width_offset_low:I

    iput v2, p0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->hover_exit_adjustment_width_offset:I

    .line 253
    iget-object v2, p0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->currentKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$string;->accessibility_note_Cancel:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->cancelStr:Ljava/lang/String;

    .line 254
    sget-object v2, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "WordSelectionState onEnter defaultWord:"

    aput-object v4, v3, v6

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->defaultWord:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 255
    iput-boolean v6, p0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->hasScrubbingStarted:Z

    .line 256
    iput-boolean v6, p0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->defaultWordSpokenOnce:Z

    .line 257
    iput-boolean v6, p0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->isStartPointInitialize:Z

    .line 258
    const-string/jumbo v2, ""

    invoke-direct {p0, v2}, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->setCurrentSelection(Ljava/lang/String;)V

    .line 259
    iput-boolean v6, p0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->handlingActionUp:Z

    .line 260
    invoke-direct {p0}, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->speakDefaultWordOnEnter()V

    .line 262
    iget-object v2, p0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->wordChoiceListCache:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 263
    iget-object v2, p0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->wordChoiceListCache:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->initializeList(Ljava/util/ArrayList;)V

    .line 265
    :cond_0
    return-void
.end method

.method public onExit()V
    .locals 2

    .prologue
    .line 270
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->scrubGesture:Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureStrategy;

    .line 271
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->hasScrubbingStarted:Z

    .line 273
    invoke-direct {p0}, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->getCandidateListView()Lcom/nuance/swype/input/CandidatesListView;

    move-result-object v0

    .line 274
    .local v0, "candidateListView":Lcom/nuance/swype/input/CandidatesListView;
    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {v0}, Lcom/nuance/swype/input/CandidatesListView;->hideCandidateHighlight()V

    .line 278
    :cond_0
    const-string/jumbo v1, ""

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->setCurrentSelection(Ljava/lang/String;)V

    .line 279
    return-void
.end method

.method public onPressHoldCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/input/swypecorelib/Candidates;)Z
    .locals 1
    .param p1, "candidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;
    .param p2, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 292
    const/4 v0, 0x0

    return v0
.end method

.method public onPressMoveCandidate(FFF)V
    .locals 0
    .param p1, "xPos"    # F
    .param p2, "yPos"    # F
    .param p3, "xOffset"    # F

    .prologue
    .line 302
    return-void
.end method

.method public onPressReleaseCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/input/swypecorelib/Candidates;)Z
    .locals 1
    .param p1, "candidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;
    .param p2, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 297
    const/4 v0, 0x0

    return v0
.end method

.method public onSelectCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/input/swypecorelib/Candidates;)Z
    .locals 1
    .param p1, "candidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;
    .param p2, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 285
    const/4 v0, 0x0

    return v0
.end method

.method public populateEventData(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->currentSelection:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->handlingActionUp:Z

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->accessibilityInfo:Lcom/nuance/swype/input/accessibility/AccessibilityInfo;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->interruptTalkbackIfRequired(Lcom/nuance/swype/input/accessibility/AccessibilityInfo;)V

    .line 183
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->currentSelection:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->setAccessibilityEventText(Landroid/view/accessibility/AccessibilityEvent;Ljava/lang/CharSequence;)V

    .line 185
    :cond_0
    return-void
.end method

.method public selectionChanged(Lcom/nuance/swype/input/KeyboardEx$Key;)V
    .locals 0
    .param p1, "selection"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 207
    return-void
.end method

.method public selectionChanged(Ljava/lang/String;)V
    .locals 5
    .param p1, "selection"    # Ljava/lang/String;

    .prologue
    .line 190
    sget-object v1, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState$ACTION_TYPE;->SCRUB_GESTURE:Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState$ACTION_TYPE;

    iput-object v1, p0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->actionType:Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState$ACTION_TYPE;

    .line 191
    iget-object v1, p0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->currentSelection:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 192
    .local v0, "spokenOnce":Z
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->setCurrentSelection(Ljava/lang/String;)V

    .line 193
    iget-object v1, p0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->currentSelection:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 196
    invoke-direct {p0}, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->getCandidateListView()Lcom/nuance/swype/input/CandidatesListView;

    move-result-object v1

    .line 197
    invoke-virtual {v1, p1}, Lcom/nuance/swype/input/CandidatesListView;->highlightCandidate(Ljava/lang/String;)V

    .line 198
    sget-object v1, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "WordSelectionState selectionChanged defaultWord:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->defaultWord:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, " spokenOnce:"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 199
    if-nez v0, :cond_0

    .line 200
    invoke-direct {p0}, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->speakSelectedChoice()V

    .line 203
    :cond_0
    return-void
.end method

.method public selectionChangedToCancel()V
    .locals 4

    .prologue
    .line 218
    sget-object v0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState$ACTION_TYPE;->CANCEL:Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState$ACTION_TYPE;

    iput-object v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->actionType:Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState$ACTION_TYPE;

    .line 219
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->cancelStr:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->setCurrentSelection(Ljava/lang/String;)V

    .line 222
    invoke-direct {p0}, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->getCandidateListView()Lcom/nuance/swype/input/CandidatesListView;

    move-result-object v0

    .line 223
    invoke-virtual {v0}, Lcom/nuance/swype/input/CandidatesListView;->hideCandidateHighlight()V

    .line 224
    sget-object v0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "WordSelectionState selectionChangedToCancel defaultWord:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->defaultWord:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 225
    invoke-direct {p0}, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->speakSelectedChoice()V

    .line 226
    return-void
.end method

.method public selectionModeConfirmed()V
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->hasScrubbingStarted:Z

    .line 240
    return-void
.end method

.method public selectionOutOfBounds()V
    .locals 2

    .prologue
    .line 323
    sget-object v1, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState$ACTION_TYPE;->CANCEL:Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState$ACTION_TYPE;

    iput-object v1, p0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->actionType:Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState$ACTION_TYPE;

    .line 324
    invoke-static {}, Lcom/nuance/swype/input/accessibility/SoundResources;->getInstance()Lcom/nuance/swype/input/accessibility/SoundResources;

    move-result-object v0

    .line 325
    .local v0, "instance":Lcom/nuance/swype/input/accessibility/SoundResources;
    if-eqz v0, :cond_0

    .line 326
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/accessibility/SoundResources;->play(I)V

    .line 328
    :cond_0
    return-void
.end method
