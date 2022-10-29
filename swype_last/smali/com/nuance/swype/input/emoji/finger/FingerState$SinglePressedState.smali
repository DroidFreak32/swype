.class Lcom/nuance/swype/input/emoji/finger/FingerState$SinglePressedState;
.super Lcom/nuance/swype/input/emoji/finger/FingerState$PressedState;
.source "FingerState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/emoji/finger/FingerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SinglePressedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;


# direct methods
.method private constructor <init>(Lcom/nuance/swype/input/emoji/finger/FingerState;)V
    .registers 3

    .prologue
    .line 460
    iput-object p1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$SinglePressedState;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nuance/swype/input/emoji/finger/FingerState$PressedState;-><init>(Lcom/nuance/swype/input/emoji/finger/FingerState;Lcom/nuance/swype/input/emoji/finger/FingerState$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/swype/input/emoji/finger/FingerState;Lcom/nuance/swype/input/emoji/finger/FingerState$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/nuance/swype/input/emoji/finger/FingerState;
    .param p2, "x1"    # Lcom/nuance/swype/input/emoji/finger/FingerState$1;

    .prologue
    .line 460
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/emoji/finger/FingerState$SinglePressedState;-><init>(Lcom/nuance/swype/input/emoji/finger/FingerState;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 464
    const-string/jumbo v0, "[pressed]"

    return-object v0
.end method

.method protected getPressState()Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;
    .registers 2

    .prologue
    .line 469
    sget-object v0, Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;->PRESSED:Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;

    return-object v0
.end method

.method public onEnter(Lcom/nuance/swype/input/emoji/finger/FingerState$State;)V
    .registers 4
    .param p1, "last"    # Lcom/nuance/swype/input/emoji/finger/FingerState$State;

    .prologue
    .line 474
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$SinglePressedState;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    # getter for: Lcom/nuance/swype/input/emoji/finger/FingerState;->downObject:Lcom/nuance/swype/input/emoji/finger/Fingerable;
    invoke-static {v0}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$100(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/input/emoji/finger/Fingerable;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/swype/input/emoji/finger/Fingerable;->isPressHoldSupported()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 476
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$SinglePressedState;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    # getter for: Lcom/nuance/swype/input/emoji/finger/FingerState;->timer:Lcom/nuance/swype/util/Callback;
    invoke-static {v0}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$500(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/util/Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$SinglePressedState;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    # getter for: Lcom/nuance/swype/input/emoji/finger/FingerState;->params:Lcom/nuance/swype/input/emoji/finger/FingerState$Params;
    invoke-static {v1}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$1900(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/input/emoji/finger/FingerState$Params;

    move-result-object v1

    iget v1, v1, Lcom/nuance/swype/input/emoji/finger/FingerState$Params;->holdTimeout:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/Callback;->restart(I)V

    .line 478
    :cond_1d
    return-void
.end method

.method public onExit(Lcom/nuance/swype/input/emoji/finger/FingerState$State;)V
    .registers 3
    .param p1, "next"    # Lcom/nuance/swype/input/emoji/finger/FingerState$State;

    .prologue
    .line 482
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$SinglePressedState;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    # getter for: Lcom/nuance/swype/input/emoji/finger/FingerState;->timer:Lcom/nuance/swype/util/Callback;
    invoke-static {v0}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$500(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/util/Callback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/util/Callback;->stop()V

    .line 483
    return-void
.end method

.method public onTimeout()V
    .registers 4

    .prologue
    .line 503
    const-string/jumbo v0, "onTimeout()"

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/emoji/finger/FingerState$SinglePressedState;->slog(Ljava/lang/Object;)V

    .line 504
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$SinglePressedState;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    iget-object v1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$SinglePressedState;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    # getter for: Lcom/nuance/swype/input/emoji/finger/FingerState;->shortHoldState:Lcom/nuance/swype/input/emoji/finger/FingerState$State;
    invoke-static {v1}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$2100(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/input/emoji/finger/FingerState$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/emoji/finger/FingerState;->changeState(Lcom/nuance/swype/input/emoji/finger/FingerState$State;)V

    .line 505
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$SinglePressedState;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    # getter for: Lcom/nuance/swype/input/emoji/finger/FingerState;->listener:Lcom/nuance/swype/input/emoji/finger/FingerStateListener;
    invoke-static {v0}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$000(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/input/emoji/finger/FingerStateListener;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 506
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$SinglePressedState;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    # getter for: Lcom/nuance/swype/input/emoji/finger/FingerState;->listener:Lcom/nuance/swype/input/emoji/finger/FingerStateListener;
    invoke-static {v0}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$000(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/input/emoji/finger/FingerStateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$SinglePressedState;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    # getter for: Lcom/nuance/swype/input/emoji/finger/FingerState;->downObject:Lcom/nuance/swype/input/emoji/finger/Fingerable;
    invoke-static {v1}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$100(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/input/emoji/finger/Fingerable;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$SinglePressedState;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/input/emoji/finger/FingerStateListener;->onFingerPress(Lcom/nuance/swype/input/emoji/finger/Fingerable;Lcom/nuance/swype/input/emoji/finger/FingerInfo;)V

    .line 508
    :cond_2a
    return-void
.end method

.method public onUp(Lcom/nuance/swype/input/emoji/finger/Fingerable;Landroid/view/MotionEvent;)V
    .registers 7
    .param p1, "itemUnderFinger"    # Lcom/nuance/swype/input/emoji/finger/Fingerable;
    .param p2, "me"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 488
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$SinglePressedState;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    # invokes: Lcom/nuance/swype/input/emoji/finger/FingerState;->updateMovementData(Landroid/view/MotionEvent;Z)V
    invoke-static {v0, p2, v3}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$1600(Lcom/nuance/swype/input/emoji/finger/FingerState;Landroid/view/MotionEvent;Z)V

    .line 489
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$SinglePressedState;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    # getter for: Lcom/nuance/swype/input/emoji/finger/FingerState;->downObject:Lcom/nuance/swype/input/emoji/finger/Fingerable;
    invoke-static {v0}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$100(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/input/emoji/finger/Fingerable;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/swype/input/emoji/finger/Fingerable;->isDoubleTapSupported()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 491
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$SinglePressedState;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    iget-object v1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$SinglePressedState;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    # getter for: Lcom/nuance/swype/input/emoji/finger/FingerState;->doublePressPendingState:Lcom/nuance/swype/input/emoji/finger/FingerState$State;
    invoke-static {v1}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$2000(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/input/emoji/finger/FingerState$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/emoji/finger/FingerState;->changeState(Lcom/nuance/swype/input/emoji/finger/FingerState$State;)V

    .line 498
    :goto_1d
    return-void

    .line 493
    :cond_1e
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$SinglePressedState;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    # getter for: Lcom/nuance/swype/input/emoji/finger/FingerState;->listener:Lcom/nuance/swype/input/emoji/finger/FingerStateListener;
    invoke-static {v0}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$000(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/input/emoji/finger/FingerStateListener;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 494
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$SinglePressedState;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    # getter for: Lcom/nuance/swype/input/emoji/finger/FingerState;->listener:Lcom/nuance/swype/input/emoji/finger/FingerStateListener;
    invoke-static {v0}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$000(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/input/emoji/finger/FingerStateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$SinglePressedState;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    # getter for: Lcom/nuance/swype/input/emoji/finger/FingerState;->downObject:Lcom/nuance/swype/input/emoji/finger/Fingerable;
    invoke-static {v1}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$100(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/input/emoji/finger/Fingerable;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$SinglePressedState;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/swype/input/emoji/finger/FingerStateListener;->onFingerRelease(Lcom/nuance/swype/input/emoji/finger/Fingerable;Lcom/nuance/swype/input/emoji/finger/FingerInfo;Z)V

    .line 496
    :cond_37
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$SinglePressedState;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    iget-object v1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$SinglePressedState;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    # getter for: Lcom/nuance/swype/input/emoji/finger/FingerState;->idleState:Lcom/nuance/swype/input/emoji/finger/FingerState$State;
    invoke-static {v1}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$200(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/input/emoji/finger/FingerState$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/emoji/finger/FingerState;->changeState(Lcom/nuance/swype/input/emoji/finger/FingerState$State;)V

    goto :goto_1d
.end method
