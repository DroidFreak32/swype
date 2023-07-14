.class Lcom/nuance/swype/input/emoji/finger/FingerState$3;
.super Lcom/nuance/swype/input/emoji/finger/FingerState$PressedState;
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
    .line 552
    iput-object p1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$3;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nuance/swype/input/emoji/finger/FingerState$PressedState;-><init>(Lcom/nuance/swype/input/emoji/finger/FingerState;Lcom/nuance/swype/input/emoji/finger/FingerState$1;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 556
    const-string/jumbo v0, "[short-hold]"

    return-object v0
.end method

.method protected getPressState()Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;
    .locals 1

    .prologue
    .line 561
    sget-object v0, Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;->SHORT:Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;

    return-object v0
.end method

.method public onEnter(Lcom/nuance/swype/input/emoji/finger/FingerState$State;)V
    .locals 2
    .param p1, "last"    # Lcom/nuance/swype/input/emoji/finger/FingerState$State;

    .prologue
    .line 567
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$3;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    invoke-static {v0}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$500(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/util/Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$3;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    invoke-static {v1}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$1900(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/input/emoji/finger/FingerState$Params;

    move-result-object v1

    iget v1, v1, Lcom/nuance/swype/input/emoji/finger/FingerState$Params;->holdTimeout:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/Callback;->restart(I)V

    .line 568
    return-void
.end method

.method public onExit(Lcom/nuance/swype/input/emoji/finger/FingerState$State;)V
    .locals 1
    .param p1, "next"    # Lcom/nuance/swype/input/emoji/finger/FingerState$State;

    .prologue
    .line 572
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$3;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    invoke-static {v0}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$500(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/util/Callback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/util/Callback;->stop()V

    .line 573
    return-void
.end method

.method public onTimeout()V
    .locals 3

    .prologue
    .line 585
    const-string/jumbo v0, "onTimeout()"

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/emoji/finger/FingerState$3;->slog(Ljava/lang/Object;)V

    .line 586
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$3;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    iget-object v1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$3;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    invoke-static {v1}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$2400(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/input/emoji/finger/FingerState$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/emoji/finger/FingerState;->changeState(Lcom/nuance/swype/input/emoji/finger/FingerState$State;)V

    .line 587
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$3;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    invoke-static {v0}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$000(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/input/emoji/finger/FingerStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$3;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    invoke-static {v0}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$000(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/input/emoji/finger/FingerStateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$3;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    invoke-static {v1}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$100(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/input/emoji/finger/Fingerable;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$3;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/input/emoji/finger/FingerStateListener;->onFingerPress(Lcom/nuance/swype/input/emoji/finger/Fingerable;Lcom/nuance/swype/input/emoji/finger/FingerInfo;)V

    .line 590
    :cond_0
    return-void
.end method

.method public onUp(Lcom/nuance/swype/input/emoji/finger/Fingerable;Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "itemUnderFinger"    # Lcom/nuance/swype/input/emoji/finger/Fingerable;
    .param p2, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 577
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$3;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    invoke-static {v0}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$000(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/input/emoji/finger/FingerStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$3;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    invoke-static {v0}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$000(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/input/emoji/finger/FingerStateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$3;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    invoke-static {v1}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$100(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/input/emoji/finger/Fingerable;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$3;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/swype/input/emoji/finger/FingerStateListener;->onFingerRelease(Lcom/nuance/swype/input/emoji/finger/Fingerable;Lcom/nuance/swype/input/emoji/finger/FingerInfo;Z)V

    .line 580
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$3;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    iget-object v1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$3;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    invoke-static {v1}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$200(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/input/emoji/finger/FingerState$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/emoji/finger/FingerState;->changeState(Lcom/nuance/swype/input/emoji/finger/FingerState$State;)V

    .line 581
    return-void
.end method
