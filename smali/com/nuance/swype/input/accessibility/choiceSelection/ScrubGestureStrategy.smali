.class public Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureStrategy;
.super Ljava/lang/Object;
.source "ScrubGestureStrategy.java"

# interfaces
.implements Lcom/nuance/swype/input/accessibility/choiceSelection/ISelectionStrategy;


# instance fields
.field private changeListener:Lcom/nuance/swype/input/accessibility/choiceSelection/ISelectionChangeListener;

.field private choices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation
.end field

.field private isCancelAdded:Z

.field lastCircleCount:I

.field private numberOfChoices:I

.field sgd:Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;

    invoke-direct {v0}, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureStrategy;->sgd:Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;

    .line 37
    return-void
.end method

.method private computeCurrentSlot(ILcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector$Direction;)I
    .locals 0
    .param p1, "circleNumber"    # I
    .param p2, "direction"    # Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector$Direction;

    .prologue
    .line 109
    return p1
.end method

.method private notifyChange(ILcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector$Direction;)V
    .locals 5
    .param p1, "circleNumber"    # I
    .param p2, "direction"    # Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector$Direction;

    .prologue
    .line 74
    iget-object v2, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureStrategy;->changeListener:Lcom/nuance/swype/input/accessibility/choiceSelection/ISelectionChangeListener;

    if-eqz v2, :cond_8

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureStrategy;->computeCurrentSlot(ILcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector$Direction;)I

    move-result v1

    .line 77
    .local v1, "slot":I
    const/4 v0, 0x1

    .line 78
    .local v0, "bContinue":Z
    :cond_0
    :goto_0
    if-eqz v0, :cond_8

    .line 79
    const/4 v0, 0x0

    .line 80
    iget-object v2, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureStrategy;->choices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureStrategy;->isCancelAdded:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureStrategy;->numberOfChoices:I

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_1

    if-nez v1, :cond_2

    .line 82
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureStrategy;->changeListener:Lcom/nuance/swype/input/accessibility/choiceSelection/ISelectionChangeListener;

    invoke-interface {v2}, Lcom/nuance/swype/input/accessibility/choiceSelection/ISelectionChangeListener;->selectionOutOfBounds()V

    .line 83
    iget-object v2, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureStrategy;->sgd:Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;

    invoke-virtual {v2, v1}, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->resetCircleCount(I)V

    goto :goto_0

    .line 85
    :cond_2
    iget-boolean v2, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureStrategy;->isCancelAdded:Z

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureStrategy;->numberOfChoices:I

    add-int/lit8 v2, v2, -0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 86
    :cond_3
    iget-object v2, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureStrategy;->changeListener:Lcom/nuance/swype/input/accessibility/choiceSelection/ISelectionChangeListener;

    invoke-interface {v2}, Lcom/nuance/swype/input/accessibility/choiceSelection/ISelectionChangeListener;->selectionChangedToCancel()V

    goto :goto_0

    .line 88
    :cond_4
    iget-boolean v2, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureStrategy;->isCancelAdded:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    iget v2, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureStrategy;->numberOfChoices:I

    add-int/lit8 v2, v2, -0x2

    if-ge v1, v2, :cond_0

    .line 89
    iget-object v2, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureStrategy;->changeListener:Lcom/nuance/swype/input/accessibility/choiceSelection/ISelectionChangeListener;

    instance-of v2, v2, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;

    if-eqz v2, :cond_5

    .line 90
    iget-object v2, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureStrategy;->changeListener:Lcom/nuance/swype/input/accessibility/choiceSelection/ISelectionChangeListener;

    iget-object v3, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureStrategy;->choices:Ljava/util/List;

    add-int/lit8 v4, v1, -0x2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/swype/input/accessibility/choiceSelection/ISelectionChangeListener;->selectionChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_5
    iget-object v2, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureStrategy;->changeListener:Lcom/nuance/swype/input/accessibility/choiceSelection/ISelectionChangeListener;

    instance-of v2, v2, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;

    if-eqz v2, :cond_0

    .line 92
    iget-object v2, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureStrategy;->choices:Ljava/util/List;

    add-int/lit8 v3, v1, -0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 93
    iget-boolean v2, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->visible:Z

    if-eqz v2, :cond_6

    .line 94
    iget-object v3, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureStrategy;->changeListener:Lcom/nuance/swype/input/accessibility/choiceSelection/ISelectionChangeListener;

    iget-object v2, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureStrategy;->choices:Ljava/util/List;

    add-int/lit8 v4, v1, -0x2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/KeyboardEx$Key;

    invoke-interface {v3, v2}, Lcom/nuance/swype/input/accessibility/choiceSelection/ISelectionChangeListener;->selectionChanged(Lcom/nuance/swype/input/KeyboardEx$Key;)V

    goto :goto_0

    .line 96
    :cond_6
    sget-object v2, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector$Direction;->CLOCKWISE:Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector$Direction;

    if-ne p2, v2, :cond_7

    add-int/lit8 v1, v1, 0x1

    .line 97
    :goto_1
    iget-object v2, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureStrategy;->sgd:Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;

    invoke-virtual {v2, v1}, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->resetCircleCount(I)V

    .line 98
    const/4 v0, 0x1

    .line 100
    goto/16 :goto_0

    .line 96
    :cond_7
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 105
    .end local v0    # "bContinue":Z
    .end local v1    # "slot":I
    :cond_8
    return-void
.end method

.method private notifyListenerForConfirmation(Z)V
    .locals 1
    .param p1, "shouldLockInScrubMode"    # Z

    .prologue
    .line 66
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureStrategy;->changeListener:Lcom/nuance/swype/input/accessibility/choiceSelection/ISelectionChangeListener;

    if-eqz v0, :cond_0

    .line 67
    if-eqz p1, :cond_0

    .line 68
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureStrategy;->changeListener:Lcom/nuance/swype/input/accessibility/choiceSelection/ISelectionChangeListener;

    invoke-interface {v0}, Lcom/nuance/swype/input/accessibility/choiceSelection/ISelectionChangeListener;->selectionModeConfirmed()V

    .line 71
    :cond_0
    return-void
.end method


# virtual methods
.method public addCancel()V
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureStrategy;->isCancelAdded:Z

    if-nez v0, :cond_0

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureStrategy;->isCancelAdded:Z

    .line 135
    iget v0, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureStrategy;->numberOfChoices:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureStrategy;->numberOfChoices:I

    .line 137
    :cond_0
    return-void
.end method

.method public handleMove(Landroid/graphics/Point;)V
    .locals 2
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 52
    iget-object v1, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureStrategy;->sgd:Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;

    invoke-virtual {v1}, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->shouldLockInScrubMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureStrategy;->notifyListenerForConfirmation(Z)V

    .line 55
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureStrategy;->sgd:Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;

    invoke-virtual {v1, p1}, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->trackSignChange(Landroid/graphics/Point;)I

    move-result v0

    .line 56
    .local v0, "circleCount":I
    iget-object v1, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureStrategy;->changeListener:Lcom/nuance/swype/input/accessibility/choiceSelection/ISelectionChangeListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureStrategy;->choices:Ljava/util/List;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureStrategy;->numberOfChoices:I

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureStrategy;->sgd:Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;

    invoke-virtual {v1}, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->hasNewCircleComplete()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 57
    iget-object v1, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureStrategy;->changeListener:Lcom/nuance/swype/input/accessibility/choiceSelection/ISelectionChangeListener;

    invoke-interface {v1}, Lcom/nuance/swype/input/accessibility/choiceSelection/ISelectionChangeListener;->selectionOutOfBounds()V

    .line 59
    :cond_2
    iget v1, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureStrategy;->lastCircleCount:I

    if-ne v0, v1, :cond_3

    iget-object v1, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureStrategy;->sgd:Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;

    invoke-virtual {v1}, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->hasNewCircleComplete()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 60
    :cond_3
    iput v0, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureStrategy;->lastCircleCount:I

    .line 61
    iget-object v1, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureStrategy;->sgd:Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;

    invoke-virtual {v1}, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->getDirection()Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector$Direction;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureStrategy;->notifyChange(ILcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector$Direction;)V

    .line 63
    :cond_4
    return-void
.end method

.method public setChoices(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, "choices":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v0, 0x0

    .line 116
    iput-boolean v0, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureStrategy;->isCancelAdded:Z

    .line 117
    iput-object p1, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureStrategy;->choices:Ljava/util/List;

    .line 118
    if-eqz p1, :cond_0

    .line 119
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureStrategy;->numberOfChoices:I

    .line 124
    :goto_0
    return-void

    .line 121
    :cond_0
    iput v0, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureStrategy;->numberOfChoices:I

    goto :goto_0
.end method

.method public setSelectionChangeListener(Lcom/nuance/swype/input/accessibility/choiceSelection/ISelectionChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/nuance/swype/input/accessibility/choiceSelection/ISelectionChangeListener;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureStrategy;->changeListener:Lcom/nuance/swype/input/accessibility/choiceSelection/ISelectionChangeListener;

    .line 129
    return-void
.end method

.method public setStartPoint(Landroid/graphics/Point;I)V
    .locals 4
    .param p1, "point"    # Landroid/graphics/Point;
    .param p2, "startIndexOffset"    # I

    .prologue
    const/4 v3, 0x0

    .line 41
    iget-boolean v0, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureStrategy;->isCancelAdded:Z

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureStrategy;->sgd:Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;

    iget v1, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureStrategy;->numberOfChoices:I

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, p2, 0x2

    invoke-virtual {v0, p1, v3, v1, v2}, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->reset(Landroid/graphics/Point;III)V

    .line 43
    add-int/lit8 v0, p2, 0x2

    iput v0, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureStrategy;->lastCircleCount:I

    .line 48
    :goto_0
    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureStrategy;->sgd:Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;

    iget v1, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureStrategy;->numberOfChoices:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, p1, v3, v1, p2}, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;->reset(Landroid/graphics/Point;III)V

    .line 46
    iput p2, p0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureStrategy;->lastCircleCount:I

    goto :goto_0
.end method
