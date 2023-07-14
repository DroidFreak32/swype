.class Lcom/nuance/swype/input/emoji/finger/FingerState$6;
.super Lcom/nuance/swype/input/emoji/finger/FingerState$State;
.source "FingerState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/emoji/finger/FingerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/emoji/finger/FingerState;)V
    .locals 1
    .param p1, "this$0"    # Lcom/nuance/swype/input/emoji/finger/FingerState;

    .prologue
    .line 650
    iput-object p1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$6;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nuance/swype/input/emoji/finger/FingerState$State;-><init>(Lcom/nuance/swype/input/emoji/finger/FingerState;Lcom/nuance/swype/input/emoji/finger/FingerState$1;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 654
    const-string/jumbo v0, "[double-press-pending]"

    return-object v0
.end method

.method protected getPressState()Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;
    .locals 1

    .prologue
    .line 659
    sget-object v0, Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;->UNPRESSED:Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 717
    const/4 v0, 0x0

    return v0
.end method

.method public isDoublePressPending()Z
    .locals 1

    .prologue
    .line 675
    const/4 v0, 0x1

    return v0
.end method

.method public onDown(Lcom/nuance/swype/input/emoji/finger/Fingerable;Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "itemUnderFinger"    # Lcom/nuance/swype/input/emoji/finger/Fingerable;
    .param p2, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 680
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$6;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    invoke-static {v0}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$100(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/input/emoji/finger/Fingerable;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 682
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$6;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    iget-object v1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$6;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    invoke-static {v1}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$2500(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/input/emoji/finger/FingerState$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/emoji/finger/FingerState;->changeState(Lcom/nuance/swype/input/emoji/finger/FingerState$State;)V

    .line 683
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$6;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    invoke-static {v0}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$000(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/input/emoji/finger/FingerStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$6;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    invoke-static {v0}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$000(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/input/emoji/finger/FingerStateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$6;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    invoke-static {v1}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$100(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/input/emoji/finger/Fingerable;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$6;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/input/emoji/finger/FingerStateListener;->onFingerPress(Lcom/nuance/swype/input/emoji/finger/Fingerable;Lcom/nuance/swype/input/emoji/finger/FingerInfo;)V

    .line 692
    :cond_0
    :goto_0
    return-void

    .line 688
    :cond_1
    const-string/jumbo v0, "onDown(): down in new item (cancel and go to down state)"

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/emoji/finger/FingerState$6;->slog(Ljava/lang/Object;)V

    .line 689
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/finger/FingerState$6;->onCancel()V

    .line 690
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$6;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/emoji/finger/FingerState;->onPointerDown(Lcom/nuance/swype/input/emoji/finger/Fingerable;Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public onEnter(Lcom/nuance/swype/input/emoji/finger/FingerState$State;)V
    .locals 2
    .param p1, "last"    # Lcom/nuance/swype/input/emoji/finger/FingerState$State;

    .prologue
    .line 665
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$6;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    invoke-static {v0}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$500(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/util/Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$6;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    invoke-static {v1}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$1900(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/input/emoji/finger/FingerState$Params;

    move-result-object v1

    iget v1, v1, Lcom/nuance/swype/input/emoji/finger/FingerState$Params;->doublePressTimeout:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/Callback;->restart(I)V

    .line 666
    return-void
.end method

.method public onExit(Lcom/nuance/swype/input/emoji/finger/FingerState$State;)V
    .locals 1
    .param p1, "next"    # Lcom/nuance/swype/input/emoji/finger/FingerState$State;

    .prologue
    .line 670
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$6;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    invoke-static {v0}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$500(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/util/Callback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/util/Callback;->stop()V

    .line 671
    return-void
.end method

.method public onMove(Lcom/nuance/swype/input/emoji/finger/Fingerable;FFZ)V
    .locals 1
    .param p1, "itemUnderFinger"    # Lcom/nuance/swype/input/emoji/finger/Fingerable;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "isHistorical"    # Z

    .prologue
    .line 696
    const-string/jumbo v0, "onFingerMove(): unexpected in current state"

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/emoji/finger/FingerState$6;->slog(Ljava/lang/Object;)V

    .line 697
    return-void
.end method

.method public onTimeout()V
    .locals 4

    .prologue
    .line 708
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$6;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    iget-object v1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$6;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    invoke-static {v1}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$1400(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/input/emoji/finger/FingerState$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/emoji/finger/FingerState;->changeState(Lcom/nuance/swype/input/emoji/finger/FingerState$State;)V

    .line 709
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$6;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    invoke-static {v0}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$000(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/input/emoji/finger/FingerStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$6;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    invoke-static {v0}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$000(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/input/emoji/finger/FingerStateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$6;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    invoke-static {v1}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$100(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/input/emoji/finger/Fingerable;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$6;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/swype/input/emoji/finger/FingerStateListener;->onFingerRelease(Lcom/nuance/swype/input/emoji/finger/Fingerable;Lcom/nuance/swype/input/emoji/finger/FingerInfo;Z)V

    .line 712
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$6;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    iget-object v1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$6;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    invoke-static {v1}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$200(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/input/emoji/finger/FingerState$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/emoji/finger/FingerState;->changeState(Lcom/nuance/swype/input/emoji/finger/FingerState$State;)V

    .line 713
    return-void
.end method

.method public onUp(Lcom/nuance/swype/input/emoji/finger/Fingerable;Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "itemUnderFinger"    # Lcom/nuance/swype/input/emoji/finger/Fingerable;
    .param p2, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 701
    const-string/jumbo v0, "onUp(): unexpected in current state"

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/emoji/finger/FingerState$6;->slog(Ljava/lang/Object;)V

    .line 702
    return-void
.end method
